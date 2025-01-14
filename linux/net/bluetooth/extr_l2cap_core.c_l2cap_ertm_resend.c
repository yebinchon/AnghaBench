
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef struct l2cap_chan* u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct l2cap_ctrl {int final; struct l2cap_chan* txseq; int reqseq; struct l2cap_chan* retries; } ;
struct TYPE_4__ {scalar_t__ head; } ;
struct l2cap_chan {scalar_t__ fcs; int buffer_seq; int last_acked_seq; int flags; TYPE_1__ retrans_list; int conn_state; struct l2cap_chan* max_tx; int tx_q; } ;
struct TYPE_5__ {struct l2cap_ctrl l2cap; } ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 int CONN_REMOTE_BUSY ;
 int CONN_SEND_FBIT ;
 int ECONNRESET ;
 int FLAG_EXT_CTRL ;
 int GFP_KERNEL ;
 scalar_t__ L2CAP_FCS_CRC16 ;
 scalar_t__ L2CAP_FCS_SIZE ;
 scalar_t__ L2CAP_HDR_SIZE ;
 scalar_t__ L2CAP_SEQ_LIST_CLEAR ;
 scalar_t__ __chan_is_moving (struct l2cap_chan*) ;
 struct l2cap_chan* __pack_enhanced_control (struct l2cap_ctrl*) ;
 int __pack_extended_control (struct l2cap_ctrl*) ;
 TYPE_3__* bt_cb (struct sk_buff*) ;
 struct l2cap_chan* crc16 (int ,int *,scalar_t__) ;
 int l2cap_do_send (struct l2cap_chan*,struct sk_buff*) ;
 struct sk_buff* l2cap_ertm_seq_in_queue (int *,struct l2cap_chan*) ;
 int l2cap_send_disconn_req (struct l2cap_chan*,int ) ;
 int l2cap_seq_list_clear (TYPE_1__*) ;
 struct l2cap_chan* l2cap_seq_list_pop (TYPE_1__*) ;
 int put_unaligned_le16 (struct l2cap_chan*,scalar_t__) ;
 int put_unaligned_le32 (int ,scalar_t__) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 scalar_t__ skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void l2cap_ertm_resend(struct l2cap_chan *chan)
{
 struct l2cap_ctrl control;
 struct sk_buff *skb;
 struct sk_buff *tx_skb;
 u16 seq;

 BT_DBG("chan %p", chan);

 if (test_bit(CONN_REMOTE_BUSY, &chan->conn_state))
  return;

 if (__chan_is_moving(chan))
  return;

 while (chan->retrans_list.head != L2CAP_SEQ_LIST_CLEAR) {
  seq = l2cap_seq_list_pop(&chan->retrans_list);

  skb = l2cap_ertm_seq_in_queue(&chan->tx_q, seq);
  if (!skb) {
   BT_DBG("Error: Can't retransmit seq %d, frame missing",
          seq);
   continue;
  }

  bt_cb(skb)->l2cap.retries++;
  control = bt_cb(skb)->l2cap;

  if (chan->max_tx != 0 &&
      bt_cb(skb)->l2cap.retries > chan->max_tx) {
   BT_DBG("Retry limit exceeded (%d)", chan->max_tx);
   l2cap_send_disconn_req(chan, ECONNRESET);
   l2cap_seq_list_clear(&chan->retrans_list);
   break;
  }

  control.reqseq = chan->buffer_seq;
  if (test_and_clear_bit(CONN_SEND_FBIT, &chan->conn_state))
   control.final = 1;
  else
   control.final = 0;

  if (skb_cloned(skb)) {



   tx_skb = skb_copy(skb, GFP_KERNEL);
  } else {
   tx_skb = skb_clone(skb, GFP_KERNEL);
  }

  if (!tx_skb) {
   l2cap_seq_list_clear(&chan->retrans_list);
   break;
  }


  if (test_bit(FLAG_EXT_CTRL, &chan->flags)) {
   put_unaligned_le32(__pack_extended_control(&control),
        tx_skb->data + L2CAP_HDR_SIZE);
  } else {
   put_unaligned_le16(__pack_enhanced_control(&control),
        tx_skb->data + L2CAP_HDR_SIZE);
  }


  if (chan->fcs == L2CAP_FCS_CRC16) {
   u16 fcs = crc16(0, (u8 *) tx_skb->data,
     tx_skb->len - L2CAP_FCS_SIZE);
   put_unaligned_le16(fcs, skb_tail_pointer(tx_skb) -
      L2CAP_FCS_SIZE);
  }

  l2cap_do_send(chan, tx_skb);

  BT_DBG("Resent txseq %d", control.txseq);

  chan->last_acked_seq = chan->buffer_seq;
 }
}
