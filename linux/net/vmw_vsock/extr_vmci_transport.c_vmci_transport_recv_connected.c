
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vsock_sock {int peer_shutdown; } ;
struct TYPE_4__ {int mode; } ;
struct vmci_transport_packet {int type; TYPE_1__ u; } ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_state; } ;
struct TYPE_6__ {TYPE_2__* notify_ops; } ;
struct TYPE_5__ {int (* handle_notify_pkt ) (struct sock*,struct vmci_transport_packet*,int,int *,int *,int*) ;} ;


 int EINVAL ;
 int SHUTDOWN_MASK ;
 int SOCK_DONE ;
 int TCP_CLOSING ;


 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int stub3 (struct sock*,struct vmci_transport_packet*,int,int *,int *,int*) ;
 TYPE_3__* vmci_trans (struct vsock_sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;
 int vsock_stream_has_data (struct vsock_sock*) ;

__attribute__((used)) static int vmci_transport_recv_connected(struct sock *sk,
      struct vmci_transport_packet *pkt)
{
 struct vsock_sock *vsk;
 bool pkt_processed = 0;
 switch (pkt->type) {
 case 128:
  if (pkt->u.mode) {
   vsk = vsock_sk(sk);

   vsk->peer_shutdown |= pkt->u.mode;
   sk->sk_state_change(sk);
  }
  break;

 case 129:
  vsk = vsock_sk(sk);
  sock_set_flag(sk, SOCK_DONE);
  vsk->peer_shutdown = SHUTDOWN_MASK;
  if (vsock_stream_has_data(vsk) <= 0)
   sk->sk_state = TCP_CLOSING;

  sk->sk_state_change(sk);
  break;

 default:
  vsk = vsock_sk(sk);
  vmci_trans(vsk)->notify_ops->handle_notify_pkt(
    sk, pkt, 0, ((void*)0), ((void*)0),
    &pkt_processed);
  if (!pkt_processed)
   return -EINVAL;

  break;
 }

 return 0;
}
