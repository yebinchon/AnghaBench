
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_ctrl {int retries; int final; int txseq; int reqseq; } ;
struct l2cap_chan {scalar_t__ state; scalar_t__ tx_state; scalar_t__ fcs; int tx_q; int unacked_frames; struct sk_buff* tx_send_head; int frames_sent; int next_tx_seq; int buffer_seq; int last_acked_seq; int conn_state; int remote_tx_win; } ;
struct TYPE_2__ {struct l2cap_ctrl l2cap; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,...) ;
 int CONN_REMOTE_BUSY ;
 int CONN_SEND_FBIT ;
 int ENOTCONN ;
 int GFP_KERNEL ;
 scalar_t__ L2CAP_FCS_CRC16 ;
 int L2CAP_FCS_SIZE ;
 scalar_t__ L2CAP_TX_STATE_XMIT ;
 scalar_t__ __chan_is_moving (struct l2cap_chan*) ;
 int __next_seq (struct l2cap_chan*,int ) ;
 int __pack_control (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*) ;
 int __set_retrans_timer (struct l2cap_chan*) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 int crc16 (int ,int *,int ) ;
 int l2cap_do_send (struct l2cap_chan*,struct sk_buff*) ;
 int put_unaligned_le16 (int ,int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_put (struct sk_buff*,int ) ;
 scalar_t__ skb_queue_is_last (int *,struct sk_buff*) ;
 int skb_queue_len (int *) ;
 struct sk_buff* skb_queue_next (int *,struct sk_buff*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int l2cap_ertm_send(struct l2cap_chan *chan)
{
 struct sk_buff *skb, *tx_skb;
 struct l2cap_ctrl *control;
 int sent = 0;

 BT_DBG("chan %p", chan);

 if (chan->state != BT_CONNECTED)
  return -ENOTCONN;

 if (test_bit(CONN_REMOTE_BUSY, &chan->conn_state))
  return 0;

 if (__chan_is_moving(chan))
  return 0;

 while (chan->tx_send_head &&
        chan->unacked_frames < chan->remote_tx_win &&
        chan->tx_state == L2CAP_TX_STATE_XMIT) {

  skb = chan->tx_send_head;

  bt_cb(skb)->l2cap.retries = 1;
  control = &bt_cb(skb)->l2cap;

  if (test_and_clear_bit(CONN_SEND_FBIT, &chan->conn_state))
   control->final = 1;

  control->reqseq = chan->buffer_seq;
  chan->last_acked_seq = chan->buffer_seq;
  control->txseq = chan->next_tx_seq;

  __pack_control(chan, control, skb);

  if (chan->fcs == L2CAP_FCS_CRC16) {
   u16 fcs = crc16(0, (u8 *) skb->data, skb->len);
   put_unaligned_le16(fcs, skb_put(skb, L2CAP_FCS_SIZE));
  }




  tx_skb = skb_clone(skb, GFP_KERNEL);

  if (!tx_skb)
   break;

  __set_retrans_timer(chan);

  chan->next_tx_seq = __next_seq(chan, chan->next_tx_seq);
  chan->unacked_frames++;
  chan->frames_sent++;
  sent++;

  if (skb_queue_is_last(&chan->tx_q, skb))
   chan->tx_send_head = ((void*)0);
  else
   chan->tx_send_head = skb_queue_next(&chan->tx_q, skb);

  l2cap_do_send(chan, tx_skb);
  BT_DBG("Sent txseq %u", control->txseq);
 }

 BT_DBG("Sent %d, %u unacked, %u in ERTM queue", sent,
        chan->unacked_frames, skb_queue_len(&chan->tx_q));

 return sent;
}
