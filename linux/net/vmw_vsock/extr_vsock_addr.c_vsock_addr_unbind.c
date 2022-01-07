
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_vm {int dummy; } ;


 int VMADDR_CID_ANY ;
 int VMADDR_PORT_ANY ;
 int vsock_addr_init (struct sockaddr_vm*,int ,int ) ;

void vsock_addr_unbind(struct sockaddr_vm *addr)
{
 vsock_addr_init(addr, VMADDR_CID_ANY, VMADDR_PORT_ANY);
}
