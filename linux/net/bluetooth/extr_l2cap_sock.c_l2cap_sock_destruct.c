
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_write_queue; int sk_receive_queue; } ;
struct TYPE_2__ {int * rx_busy_skb; scalar_t__ chan; } ;


 int BT_DBG (char*,struct sock*) ;
 int kfree_skb (int *) ;
 int l2cap_chan_put (scalar_t__) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void l2cap_sock_destruct(struct sock *sk)
{
 BT_DBG("sk %p", sk);

 if (l2cap_pi(sk)->chan)
  l2cap_chan_put(l2cap_pi(sk)->chan);

 if (l2cap_pi(sk)->rx_busy_skb) {
  kfree_skb(l2cap_pi(sk)->rx_busy_skb);
  l2cap_pi(sk)->rx_busy_skb = ((void*)0);
 }

 skb_queue_purge(&sk->sk_receive_queue);
 skb_queue_purge(&sk->sk_write_queue);
}
