
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_vm {scalar_t__ svm_port; } ;


 scalar_t__ VMADDR_PORT_ANY ;

bool vsock_addr_bound(const struct sockaddr_vm *addr)
{
 return addr->svm_port != VMADDR_PORT_ANY;
}
