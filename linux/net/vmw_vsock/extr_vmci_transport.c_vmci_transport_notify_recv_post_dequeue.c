
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vsock_transport_recv_notify_data {int dummy; } ;
struct vsock_sock {int sk; } ;
struct vmci_transport_recv_notify_data {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* notify_ops; } ;
struct TYPE_3__ {int (* recv_post_dequeue ) (int *,size_t,int ,int,struct vmci_transport_recv_notify_data*) ;} ;


 int stub1 (int *,size_t,int ,int,struct vmci_transport_recv_notify_data*) ;
 TYPE_2__* vmci_trans (struct vsock_sock*) ;

__attribute__((used)) static int vmci_transport_notify_recv_post_dequeue(
 struct vsock_sock *vsk,
 size_t target,
 ssize_t copied,
 bool data_read,
 struct vsock_transport_recv_notify_data *data)
{
 return vmci_trans(vsk)->notify_ops->recv_post_dequeue(
   &vsk->sk, target, copied, data_read,
   (struct vmci_transport_recv_notify_data *)data);
}
