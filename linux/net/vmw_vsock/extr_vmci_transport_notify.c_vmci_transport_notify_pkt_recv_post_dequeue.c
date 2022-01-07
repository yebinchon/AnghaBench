
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct vmci_transport_recv_notify_data {scalar_t__ consume_head; } ;
struct sock {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {scalar_t__ consume_size; } ;


 int PKT_FIELD (struct vsock_sock*,int ) ;
 int consume_q_generation ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;
 int vmci_transport_send_read_notification (struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int
vmci_transport_notify_pkt_recv_post_dequeue(
    struct sock *sk,
    size_t target,
    ssize_t copied,
    bool data_read,
    struct vmci_transport_recv_notify_data *data)
{
 struct vsock_sock *vsk;
 int err;

 vsk = vsock_sk(sk);
 err = 0;

 if (data_read) {
  err = vmci_transport_send_read_notification(sk);
  if (err < 0)
   return err;

 }
 return err;
}
