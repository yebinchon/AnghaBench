
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct l2cap_ctrl {int poll; int final; struct sk_buff* txseq; } ;
struct l2cap_chan {int retrans_list; int conn_state; int unacked_frames; int rx_state; int srej_list; int srej_q; int expected_tx_seq; int buffer_seq; } ;


 int BT_DBG (char*,struct l2cap_chan*,...) ;
 int CONN_LOCAL_BUSY ;
 int CONN_REJ_ACT ;
 int CONN_REMOTE_BUSY ;
 int CONN_SEND_FBIT ;
 int CONN_SREJ_ACT ;
 int ECONNRESET ;





 int L2CAP_RX_STATE_SREJ_SENT ;





 int __chan_is_moving (struct l2cap_chan*) ;
 int __clear_retrans_timer (struct l2cap_chan*) ;
 int __next_seq (struct l2cap_chan*,struct sk_buff*) ;
 int __set_retrans_timer (struct l2cap_chan*) ;
 int clear_bit (int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int l2cap_classify_txseq (struct l2cap_chan*,struct sk_buff*) ;
 int l2cap_ertm_send (struct l2cap_chan*) ;
 int l2cap_handle_rej (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_handle_srej (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_pass_to_tx (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_reassemble_sdu (struct l2cap_chan*,struct sk_buff*,struct l2cap_ctrl*) ;
 int l2cap_retransmit_all (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_send_ack (struct l2cap_chan*) ;
 int l2cap_send_disconn_req (struct l2cap_chan*,int ) ;
 int l2cap_send_i_or_rr_or_rnr (struct l2cap_chan*) ;
 int l2cap_send_rr_or_rnr (struct l2cap_chan*,int ) ;
 int l2cap_send_srej (struct l2cap_chan*,struct sk_buff*) ;
 int l2cap_seq_list_clear (int *) ;
 int set_bit (int ,int *) ;
 int skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int l2cap_rx_state_recv(struct l2cap_chan *chan,
          struct l2cap_ctrl *control,
          struct sk_buff *skb, u8 event)
{
 int err = 0;
 bool skb_in_use = 0;

 BT_DBG("chan %p, control %p, skb %p, event %d", chan, control, skb,
        event);

 switch (event) {
 case 137:
  switch (l2cap_classify_txseq(chan, control->txseq)) {
  case 131:
   l2cap_pass_to_tx(chan, control);

   if (test_bit(CONN_LOCAL_BUSY, &chan->conn_state)) {
    BT_DBG("Busy, discarding expected seq %d",
           control->txseq);
    break;
   }

   chan->expected_tx_seq = __next_seq(chan,
          control->txseq);

   chan->buffer_seq = chan->expected_tx_seq;
   skb_in_use = 1;

   err = l2cap_reassemble_sdu(chan, skb, control);
   if (err)
    break;

   if (control->final) {
    if (!test_and_clear_bit(CONN_REJ_ACT,
       &chan->conn_state)) {
     control->final = 0;
     l2cap_retransmit_all(chan, control);
     l2cap_ertm_send(chan);
    }
   }

   if (!test_bit(CONN_LOCAL_BUSY, &chan->conn_state))
    l2cap_send_ack(chan);
   break;
  case 128:
   l2cap_pass_to_tx(chan, control);





   if (test_bit(CONN_LOCAL_BUSY, &chan->conn_state)) {
    BT_DBG("Busy, discarding unexpected seq %d",
           control->txseq);
    break;
   }





   skb_queue_tail(&chan->srej_q, skb);
   skb_in_use = 1;
   BT_DBG("Queued %p (queue len %d)", skb,
          skb_queue_len(&chan->srej_q));

   clear_bit(CONN_SREJ_ACT, &chan->conn_state);
   l2cap_seq_list_clear(&chan->srej_list);
   l2cap_send_srej(chan, control->txseq);

   chan->rx_state = L2CAP_RX_STATE_SREJ_SENT;
   break;
  case 132:
   l2cap_pass_to_tx(chan, control);
   break;
  case 129:
   break;
  case 130:
  default:
   l2cap_send_disconn_req(chan, ECONNRESET);
   break;
  }
  break;
 case 134:
  l2cap_pass_to_tx(chan, control);
  if (control->final) {
   clear_bit(CONN_REMOTE_BUSY, &chan->conn_state);

   if (!test_and_clear_bit(CONN_REJ_ACT, &chan->conn_state) &&
       !__chan_is_moving(chan)) {
    control->final = 0;
    l2cap_retransmit_all(chan, control);
   }

   l2cap_ertm_send(chan);
  } else if (control->poll) {
   l2cap_send_i_or_rr_or_rnr(chan);
  } else {
   if (test_and_clear_bit(CONN_REMOTE_BUSY,
            &chan->conn_state) &&
       chan->unacked_frames)
    __set_retrans_timer(chan);

   l2cap_ertm_send(chan);
  }
  break;
 case 135:
  set_bit(CONN_REMOTE_BUSY, &chan->conn_state);
  l2cap_pass_to_tx(chan, control);
  if (control && control->poll) {
   set_bit(CONN_SEND_FBIT, &chan->conn_state);
   l2cap_send_rr_or_rnr(chan, 0);
  }
  __clear_retrans_timer(chan);
  l2cap_seq_list_clear(&chan->retrans_list);
  break;
 case 136:
  l2cap_handle_rej(chan, control);
  break;
 case 133:
  l2cap_handle_srej(chan, control);
  break;
 default:
  break;
 }

 if (skb && !skb_in_use) {
  BT_DBG("Freeing %p", skb);
  kfree_skb(skb);
 }

 return err;
}
