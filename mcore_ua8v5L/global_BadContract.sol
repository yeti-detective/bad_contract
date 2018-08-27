pragma solidity ^0.4.20;

contract BadContract {
  mapping(address => uint) public balances;

  function payIn() public payable {
    balances[msg.sender] += msg.value;
  }

  function getPaid(address payee, uint value) public {
    payee.transfer(value);
    balances[msg.sender] -= value;
  }

  function getOwnBalance() returns(uint) {
    return balances[msg.sender];
  }
}
