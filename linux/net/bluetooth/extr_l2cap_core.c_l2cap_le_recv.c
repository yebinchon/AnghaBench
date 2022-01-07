
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct l2cap_chan {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* recv ) (struct l2cap_chan*,struct sk_buff*) ;} ;


 int BT_DBG (char*,struct l2cap_chan*,int ) ;
 int l2cap_chan_le_send_credits (struct l2cap_chan*) ;
 int stub1 (struct l2cap_chan*,struct sk_buff*) ;

__attribute__((used)) static int l2cap_le_recv(struct l2cap_chan *chan, struct sk_buff *skb)
{
 int err;

 BT_DBG("SDU reassemble complete: chan %p skb->len %u", chan, skb->len);


 err = chan->ops->recv(chan, skb);


 l2cap_chan_le_send_credits(chan);

 return err;
}
