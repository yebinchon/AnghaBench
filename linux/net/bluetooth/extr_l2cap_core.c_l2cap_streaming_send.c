
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_ctrl {int retries; int txseq; scalar_t__ reqseq; } ;
struct l2cap_chan {scalar_t__ fcs; int frames_sent; int next_tx_seq; int tx_q; } ;
struct TYPE_2__ {struct l2cap_ctrl l2cap; } ;


 int BT_DBG (char*,struct l2cap_chan*,...) ;
 scalar_t__ L2CAP_FCS_CRC16 ;
 int L2CAP_FCS_SIZE ;
 scalar_t__ __chan_is_moving (struct l2cap_chan*) ;
 int __next_seq (struct l2cap_chan*,int ) ;
 int __pack_control (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 int crc16 (int ,int *,int ) ;
 int l2cap_do_send (struct l2cap_chan*,struct sk_buff*) ;
 int put_unaligned_le16 (int ,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_queue_empty (int *) ;
 int skb_queue_splice_tail_init (struct sk_buff_head*,int *) ;

__attribute__((used)) static void l2cap_streaming_send(struct l2cap_chan *chan,
     struct sk_buff_head *skbs)
{
 struct sk_buff *skb;
 struct l2cap_ctrl *control;

 BT_DBG("chan %p, skbs %p", chan, skbs);

 if (__chan_is_moving(chan))
  return;

 skb_queue_splice_tail_init(skbs, &chan->tx_q);

 while (!skb_queue_empty(&chan->tx_q)) {

  skb = skb_dequeue(&chan->tx_q);

  bt_cb(skb)->l2cap.retries = 1;
  control = &bt_cb(skb)->l2cap;

  control->reqseq = 0;
  control->txseq = chan->next_tx_seq;

  __pack_control(chan, control, skb);

  if (chan->fcs == L2CAP_FCS_CRC16) {
   u16 fcs = crc16(0, (u8 *) skb->data, skb->len);
   put_unaligned_le16(fcs, skb_put(skb, L2CAP_FCS_SIZE));
  }

  l2cap_do_send(chan, skb);

  BT_DBG("Sent txseq %u", control->txseq);

  chan->next_tx_seq = __next_seq(chan, chan->next_tx_seq);
  chan->frames_sent++;
 }
}
