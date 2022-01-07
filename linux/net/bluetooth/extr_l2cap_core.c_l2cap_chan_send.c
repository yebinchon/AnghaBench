
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct l2cap_chan {scalar_t__ chan_type; scalar_t__ state; int mode; size_t omtu; TYPE_1__* ops; int tx_credits; int tx_q; int conn; } ;
struct TYPE_2__ {int (* suspend ) (struct l2cap_chan*) ;} ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int const) ;
 int EBADFD ;
 int EMSGSIZE ;
 int ENOTCONN ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 scalar_t__ L2CAP_CHAN_CONN_LESS ;
 int L2CAP_EV_DATA_REQUEST ;




 int PTR_ERR (struct sk_buff*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* l2cap_create_basic_pdu (struct l2cap_chan*,struct msghdr*,size_t) ;
 struct sk_buff* l2cap_create_connless_pdu (struct l2cap_chan*,struct msghdr*,size_t) ;
 int l2cap_do_send (struct l2cap_chan*,struct sk_buff*) ;
 int l2cap_le_flowctl_send (struct l2cap_chan*) ;
 int l2cap_segment_le_sdu (struct l2cap_chan*,struct sk_buff_head*,struct msghdr*,size_t) ;
 int l2cap_segment_sdu (struct l2cap_chan*,struct sk_buff_head*,struct msghdr*,size_t) ;
 int l2cap_streaming_send (struct l2cap_chan*,struct sk_buff_head*) ;
 int l2cap_tx (struct l2cap_chan*,int *,struct sk_buff_head*,int ) ;
 int skb_queue_splice_tail_init (struct sk_buff_head*,int *) ;
 int stub1 (struct l2cap_chan*) ;

int l2cap_chan_send(struct l2cap_chan *chan, struct msghdr *msg, size_t len)
{
 struct sk_buff *skb;
 int err;
 struct sk_buff_head seg_queue;

 if (!chan->conn)
  return -ENOTCONN;


 if (chan->chan_type == L2CAP_CHAN_CONN_LESS) {
  skb = l2cap_create_connless_pdu(chan, msg, len);
  if (IS_ERR(skb))
   return PTR_ERR(skb);




  if (chan->state != BT_CONNECTED) {
   kfree_skb(skb);
   return -ENOTCONN;
  }

  l2cap_do_send(chan, skb);
  return len;
 }

 switch (chan->mode) {
 case 129:

  if (len > chan->omtu)
   return -EMSGSIZE;

  __skb_queue_head_init(&seg_queue);

  err = l2cap_segment_le_sdu(chan, &seg_queue, msg, len);

  if (chan->state != BT_CONNECTED) {
   __skb_queue_purge(&seg_queue);
   err = -ENOTCONN;
  }

  if (err)
   return err;

  skb_queue_splice_tail_init(&seg_queue, &chan->tx_q);

  l2cap_le_flowctl_send(chan);

  if (!chan->tx_credits)
   chan->ops->suspend(chan);

  err = len;

  break;

 case 131:

  if (len > chan->omtu)
   return -EMSGSIZE;


  skb = l2cap_create_basic_pdu(chan, msg, len);
  if (IS_ERR(skb))
   return PTR_ERR(skb);




  if (chan->state != BT_CONNECTED) {
   kfree_skb(skb);
   return -ENOTCONN;
  }

  l2cap_do_send(chan, skb);
  err = len;
  break;

 case 130:
 case 128:

  if (len > chan->omtu) {
   err = -EMSGSIZE;
   break;
  }

  __skb_queue_head_init(&seg_queue);





  err = l2cap_segment_sdu(chan, &seg_queue, msg, len);




  if (chan->state != BT_CONNECTED) {
   __skb_queue_purge(&seg_queue);
   err = -ENOTCONN;
  }

  if (err)
   break;

  if (chan->mode == 130)
   l2cap_tx(chan, ((void*)0), &seg_queue, L2CAP_EV_DATA_REQUEST);
  else
   l2cap_streaming_send(chan, &seg_queue);

  err = len;




  __skb_queue_purge(&seg_queue);
  break;

 default:
  BT_DBG("bad state %1.1x", chan->mode);
  err = -EBADFD;
 }

 return err;
}
