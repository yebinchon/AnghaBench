
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int owner; int remote_addr; int local_addr; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int (* destruct ) (struct vsock_sock*) ;} ;


 int VMADDR_CID_ANY ;
 int VMADDR_PORT_ANY ;
 int put_cred (int ) ;
 int stub1 (struct vsock_sock*) ;
 TYPE_1__* transport ;
 int vsock_addr_init (int *,int ,int ) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static void vsock_sk_destruct(struct sock *sk)
{
 struct vsock_sock *vsk = vsock_sk(sk);

 transport->destruct(vsk);




 vsock_addr_init(&vsk->local_addr, VMADDR_CID_ANY, VMADDR_PORT_ANY);
 vsock_addr_init(&vsk->remote_addr, VMADDR_CID_ANY, VMADDR_PORT_ANY);

 put_cred(vsk->owner);
}
