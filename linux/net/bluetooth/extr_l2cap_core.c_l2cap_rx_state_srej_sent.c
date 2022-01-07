
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct l2cap_ctrl {int sframe; int reqseq; int super; int poll; int final; int txseq; } ;
struct l2cap_chan {int buffer_seq; int conn_state; int unacked_frames; int srej_q; int srej_list; int expected_tx_seq; } ;
typedef int rr_control ;


 int BT_DBG (char*,struct l2cap_chan*,...) ;
 int CONN_REJ_ACT ;
 int CONN_REMOTE_BUSY ;
 int CONN_SEND_FBIT ;
 int ECONNRESET ;





 int L2CAP_SUPER_RR ;
 int __next_seq (struct l2cap_chan*,int ) ;
 int __set_retrans_timer (struct l2cap_chan*) ;
 int clear_bit (int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int l2cap_classify_txseq (struct l2cap_chan*,int ) ;
 int l2cap_ertm_send (struct l2cap_chan*) ;
 int l2cap_handle_rej (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_handle_srej (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_pass_to_tx (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_retransmit_all (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_rx_queued_iframes (struct l2cap_chan*) ;
 int l2cap_send_ack (struct l2cap_chan*) ;
 int l2cap_send_disconn_req (struct l2cap_chan*,int ) ;
 int l2cap_send_sframe (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_send_srej (struct l2cap_chan*,int ) ;
 int l2cap_send_srej_list (struct l2cap_chan*,int ) ;
 int l2cap_send_srej_tail (struct l2cap_chan*) ;
 int l2cap_seq_list_pop (int *) ;
 int memset (struct l2cap_ctrl*,int ,int) ;
 int set_bit (int ,int *) ;
 int skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int l2cap_rx_state_srej_sent(struct l2cap_chan *chan,
        struct l2cap_ctrl *control,
        struct sk_buff *skb, u8 event)
{
 int err = 0;
 u16 txseq = control->txseq;
 bool skb_in_use = 0;

 BT_DBG("chan %p, control %p, skb %p, event %d", chan, control, skb,
        event);

 switch (event) {
 case 140:
  switch (l2cap_classify_txseq(chan, txseq)) {
  case 133:

   l2cap_pass_to_tx(chan, control);
   skb_queue_tail(&chan->srej_q, skb);
   skb_in_use = 1;
   BT_DBG("Queued %p (queue len %d)", skb,
          skb_queue_len(&chan->srej_q));

   chan->expected_tx_seq = __next_seq(chan, txseq);
   break;
  case 132:
   l2cap_seq_list_pop(&chan->srej_list);

   l2cap_pass_to_tx(chan, control);
   skb_queue_tail(&chan->srej_q, skb);
   skb_in_use = 1;
   BT_DBG("Queued %p (queue len %d)", skb,
          skb_queue_len(&chan->srej_q));

   err = l2cap_rx_queued_iframes(chan);
   if (err)
    break;

   break;
  case 129:




   skb_queue_tail(&chan->srej_q, skb);
   skb_in_use = 1;
   BT_DBG("Queued %p (queue len %d)", skb,
          skb_queue_len(&chan->srej_q));

   l2cap_pass_to_tx(chan, control);
   l2cap_send_srej(chan, control->txseq);
   break;
  case 128:





   skb_queue_tail(&chan->srej_q, skb);
   skb_in_use = 1;
   BT_DBG("Queued %p (queue len %d)", skb,
          skb_queue_len(&chan->srej_q));

   l2cap_pass_to_tx(chan, control);
   l2cap_send_srej_list(chan, control->txseq);
   break;
  case 134:

   l2cap_pass_to_tx(chan, control);
   break;
  case 135:



   break;
  case 130:
   break;
  case 131:
  default:
   l2cap_send_disconn_req(chan, ECONNRESET);
   break;
  }
  break;
 case 137:
  l2cap_pass_to_tx(chan, control);
  if (control->final) {
   clear_bit(CONN_REMOTE_BUSY, &chan->conn_state);

   if (!test_and_clear_bit(CONN_REJ_ACT,
      &chan->conn_state)) {
    control->final = 0;
    l2cap_retransmit_all(chan, control);
   }

   l2cap_ertm_send(chan);
  } else if (control->poll) {
   if (test_and_clear_bit(CONN_REMOTE_BUSY,
            &chan->conn_state) &&
       chan->unacked_frames) {
    __set_retrans_timer(chan);
   }

   set_bit(CONN_SEND_FBIT, &chan->conn_state);
   l2cap_send_srej_tail(chan);
  } else {
   if (test_and_clear_bit(CONN_REMOTE_BUSY,
            &chan->conn_state) &&
       chan->unacked_frames)
    __set_retrans_timer(chan);

   l2cap_send_ack(chan);
  }
  break;
 case 138:
  set_bit(CONN_REMOTE_BUSY, &chan->conn_state);
  l2cap_pass_to_tx(chan, control);
  if (control->poll) {
   l2cap_send_srej_tail(chan);
  } else {
   struct l2cap_ctrl rr_control;
   memset(&rr_control, 0, sizeof(rr_control));
   rr_control.sframe = 1;
   rr_control.super = L2CAP_SUPER_RR;
   rr_control.reqseq = chan->buffer_seq;
   l2cap_send_sframe(chan, &rr_control);
  }

  break;
 case 139:
  l2cap_handle_rej(chan, control);
  break;
 case 136:
  l2cap_handle_srej(chan, control);
  break;
 }

 if (skb && !skb_in_use) {
  BT_DBG("Freeing %p", skb);
  kfree_skb(skb);
 }

 return err;
}
