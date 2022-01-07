
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_vm {scalar_t__ svm_cid; scalar_t__ svm_port; } ;



bool vsock_addr_equals_addr(const struct sockaddr_vm *addr,
       const struct sockaddr_vm *other)
{
 return addr->svm_cid == other->svm_cid &&
  addr->svm_port == other->svm_port;
}
