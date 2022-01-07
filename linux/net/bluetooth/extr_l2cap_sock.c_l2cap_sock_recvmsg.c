
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_rcvbuf; int sk_rmem_alloc; } ;
struct msghdr {int dummy; } ;
struct l2cap_pinfo {TYPE_1__* chan; int * rx_busy_skb; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ mode; int conn_state; void* state; int src_type; } ;


 void* BT_CONFIG ;
 scalar_t__ BT_CONNECT2 ;
 void* BT_CONNECTED ;
 int BT_SK_DEFER_SETUP ;
 int CONN_LOCAL_BUSY ;
 scalar_t__ L2CAP_MODE_ERTM ;
 scalar_t__ SOCK_STREAM ;
 int __l2cap_connect_rsp_defer (TYPE_1__*) ;
 int __l2cap_le_connect_rsp_defer (TYPE_1__*) ;
 int __sock_queue_rcv_skb (struct sock*,int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ bdaddr_type_is_le (int ) ;
 TYPE_2__* bt_sk (struct sock*) ;
 int bt_sock_recvmsg (struct socket*,struct msghdr*,size_t,int) ;
 int bt_sock_stream_recvmsg (struct socket*,struct msghdr*,size_t,int) ;
 int l2cap_chan_busy (TYPE_1__*,int ) ;
 struct l2cap_pinfo* l2cap_pi (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int l2cap_sock_recvmsg(struct socket *sock, struct msghdr *msg,
         size_t len, int flags)
{
 struct sock *sk = sock->sk;
 struct l2cap_pinfo *pi = l2cap_pi(sk);
 int err;

 lock_sock(sk);

 if (sk->sk_state == BT_CONNECT2 && test_bit(BT_SK_DEFER_SETUP,
          &bt_sk(sk)->flags)) {
  if (bdaddr_type_is_le(pi->chan->src_type)) {
   sk->sk_state = BT_CONNECTED;
   pi->chan->state = BT_CONNECTED;
   __l2cap_le_connect_rsp_defer(pi->chan);
  } else {
   sk->sk_state = BT_CONFIG;
   pi->chan->state = BT_CONFIG;
   __l2cap_connect_rsp_defer(pi->chan);
  }

  err = 0;
  goto done;
 }

 release_sock(sk);

 if (sock->type == SOCK_STREAM)
  err = bt_sock_stream_recvmsg(sock, msg, len, flags);
 else
  err = bt_sock_recvmsg(sock, msg, len, flags);

 if (pi->chan->mode != L2CAP_MODE_ERTM)
  return err;



 lock_sock(sk);

 if (!test_bit(CONN_LOCAL_BUSY, &pi->chan->conn_state))
  goto done;

 if (pi->rx_busy_skb) {
  if (!__sock_queue_rcv_skb(sk, pi->rx_busy_skb))
   pi->rx_busy_skb = ((void*)0);
  else
   goto done;
 }





 if (atomic_read(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf >> 1)
  l2cap_chan_busy(pi->chan, 0);

done:
 release_sock(sk);
 return err;
}
