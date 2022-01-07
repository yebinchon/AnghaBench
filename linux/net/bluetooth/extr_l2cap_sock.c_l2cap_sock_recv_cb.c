
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct l2cap_chan {scalar_t__ mode; struct sock* data; } ;
struct TYPE_2__ {struct sk_buff* rx_busy_skb; } ;


 int ENOMEM ;
 scalar_t__ L2CAP_MODE_ERTM ;
 scalar_t__ L2CAP_MODE_STREAMING ;
 int __sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;
 int l2cap_chan_busy (struct l2cap_chan*,int) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sk_filter (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int l2cap_sock_recv_cb(struct l2cap_chan *chan, struct sk_buff *skb)
{
 struct sock *sk = chan->data;
 int err;

 lock_sock(sk);

 if (l2cap_pi(sk)->rx_busy_skb) {
  err = -ENOMEM;
  goto done;
 }

 if (chan->mode != L2CAP_MODE_ERTM &&
     chan->mode != L2CAP_MODE_STREAMING) {



  err = sk_filter(sk, skb);
  if (err)
   goto done;
 }

 err = __sock_queue_rcv_skb(sk, skb);
 if (err < 0 && chan->mode == L2CAP_MODE_ERTM) {
  l2cap_pi(sk)->rx_busy_skb = skb;
  l2cap_chan_busy(chan, 1);
  err = 0;
 }

done:
 release_sock(sk);

 return err;
}
