
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int data; } ;
struct l2cap_ctrl {int sar; } ;
struct l2cap_chan {scalar_t__ sdu_len; struct sk_buff* sdu_last_frag; struct sk_buff* sdu; TYPE_1__* ops; scalar_t__ imtu; } ;
struct TYPE_2__ {int (* recv ) (struct l2cap_chan*,struct sk_buff*) ;} ;


 int EINVAL ;
 int EMSGSIZE ;




 int L2CAP_SDULEN_SIZE ;
 int append_skb_frag (struct sk_buff*,struct sk_buff*,struct sk_buff**) ;
 scalar_t__ get_unaligned_le16 (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int skb_pull (struct sk_buff*,int ) ;
 int stub1 (struct l2cap_chan*,struct sk_buff*) ;
 int stub2 (struct l2cap_chan*,struct sk_buff*) ;

__attribute__((used)) static int l2cap_reassemble_sdu(struct l2cap_chan *chan, struct sk_buff *skb,
    struct l2cap_ctrl *control)
{
 int err = -EINVAL;

 switch (control->sar) {
 case 128:
  if (chan->sdu)
   break;

  err = chan->ops->recv(chan, skb);
  break;

 case 129:
  if (chan->sdu)
   break;

  if (!pskb_may_pull(skb, L2CAP_SDULEN_SIZE))
   break;

  chan->sdu_len = get_unaligned_le16(skb->data);
  skb_pull(skb, L2CAP_SDULEN_SIZE);

  if (chan->sdu_len > chan->imtu) {
   err = -EMSGSIZE;
   break;
  }

  if (skb->len >= chan->sdu_len)
   break;

  chan->sdu = skb;
  chan->sdu_last_frag = skb;

  skb = ((void*)0);
  err = 0;
  break;

 case 131:
  if (!chan->sdu)
   break;

  append_skb_frag(chan->sdu, skb,
    &chan->sdu_last_frag);
  skb = ((void*)0);

  if (chan->sdu->len >= chan->sdu_len)
   break;

  err = 0;
  break;

 case 130:
  if (!chan->sdu)
   break;

  append_skb_frag(chan->sdu, skb,
    &chan->sdu_last_frag);
  skb = ((void*)0);

  if (chan->sdu->len != chan->sdu_len)
   break;

  err = chan->ops->recv(chan, chan->sdu);

  if (!err) {

   chan->sdu = ((void*)0);
   chan->sdu_last_frag = ((void*)0);
   chan->sdu_len = 0;
  }
  break;
 }

 if (err) {
  kfree_skb(skb);
  kfree_skb(chan->sdu);
  chan->sdu = ((void*)0);
  chan->sdu_last_frag = ((void*)0);
  chan->sdu_len = 0;
 }

 return err;
}
