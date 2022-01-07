
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct sockaddr_vm {void* svm_port; void* svm_cid; int svm_family; } ;


 int AF_VSOCK ;
 int memset (struct sockaddr_vm*,int ,int) ;

void vsock_addr_init(struct sockaddr_vm *addr, u32 cid, u32 port)
{
 memset(addr, 0, sizeof(*addr));
 addr->svm_family = AF_VSOCK;
 addr->svm_cid = cid;
 addr->svm_port = port;
}
