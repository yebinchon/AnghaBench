
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_vm {int dummy; } ;
typedef int guid_t ;


 int VMADDR_CID_ANY ;
 unsigned int get_port_by_srv_id (int const*) ;
 int vsock_addr_init (struct sockaddr_vm*,int ,unsigned int) ;

__attribute__((used)) static void hvs_addr_init(struct sockaddr_vm *addr, const guid_t *svr_id)
{
 unsigned int port = get_port_by_srv_id(svr_id);

 vsock_addr_init(addr, VMADDR_CID_ANY, port);
}
