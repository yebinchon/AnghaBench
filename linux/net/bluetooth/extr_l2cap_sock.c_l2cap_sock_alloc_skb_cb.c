
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_priority; } ;
struct sk_buff {int priority; } ;
struct l2cap_chan {struct sock* data; } ;
struct TYPE_3__ {struct l2cap_chan* chan; } ;
struct TYPE_4__ {TYPE_1__ l2cap; } ;


 struct sk_buff* ERR_PTR (int) ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 struct sk_buff* bt_skb_send_alloc (struct sock*,unsigned long,int,int*) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;

__attribute__((used)) static struct sk_buff *l2cap_sock_alloc_skb_cb(struct l2cap_chan *chan,
            unsigned long hdr_len,
            unsigned long len, int nb)
{
 struct sock *sk = chan->data;
 struct sk_buff *skb;
 int err;

 l2cap_chan_unlock(chan);
 skb = bt_skb_send_alloc(sk, hdr_len + len, nb, &err);
 l2cap_chan_lock(chan);

 if (!skb)
  return ERR_PTR(err);

 skb->priority = sk->sk_priority;

 bt_cb(skb)->l2cap.chan = chan;

 return skb;
}
