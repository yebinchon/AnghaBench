
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vsock_sock {int sk; } ;
struct TYPE_4__ {TYPE_1__* notify_ops; } ;
struct TYPE_3__ {int (* poll_out ) (int *,size_t,int*) ;} ;


 int stub1 (int *,size_t,int*) ;
 TYPE_2__* vmci_trans (struct vsock_sock*) ;

__attribute__((used)) static int vmci_transport_notify_poll_out(
 struct vsock_sock *vsk,
 size_t target,
 bool *space_available_now)
{
 return vmci_trans(vsk)->notify_ops->poll_out(
   &vsk->sk, target, space_available_now);
}
