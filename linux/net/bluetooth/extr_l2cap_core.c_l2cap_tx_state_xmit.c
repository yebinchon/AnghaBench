
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff_head {int dummy; } ;
struct l2cap_ctrl {int sframe; int poll; int reqseq; int super; } ;
struct l2cap_chan {int retry_count; void* tx_state; int buffer_seq; int conn_state; int rx_state; int tx_q; int * tx_send_head; } ;
typedef int local_control ;


 int BT_DBG (char*,...) ;
 int CONN_LOCAL_BUSY ;
 int CONN_RNR_SENT ;







 int L2CAP_RX_STATE_SREJ_SENT ;
 int L2CAP_SUPER_RR ;
 void* L2CAP_TX_STATE_WAIT_F ;
 int __clear_ack_timer (struct l2cap_chan*) ;
 int __set_monitor_timer (struct l2cap_chan*) ;
 int clear_bit (int ,int *) ;
 int l2cap_abort_rx_srej_sent (struct l2cap_chan*) ;
 int l2cap_ertm_send (struct l2cap_chan*) ;
 int l2cap_process_reqseq (struct l2cap_chan*,int ) ;
 int l2cap_send_ack (struct l2cap_chan*) ;
 int l2cap_send_rr_or_rnr (struct l2cap_chan*,int) ;
 int l2cap_send_sframe (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int memset (struct l2cap_ctrl*,int ,int) ;
 int set_bit (int ,int *) ;
 int * skb_peek (struct sk_buff_head*) ;
 int skb_queue_splice_tail_init (struct sk_buff_head*,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void l2cap_tx_state_xmit(struct l2cap_chan *chan,
    struct l2cap_ctrl *control,
    struct sk_buff_head *skbs, u8 event)
{
 BT_DBG("chan %p, control %p, skbs %p, event %d", chan, control, skbs,
        event);

 switch (event) {
 case 134:
  if (chan->tx_send_head == ((void*)0))
   chan->tx_send_head = skb_peek(skbs);

  skb_queue_splice_tail_init(skbs, &chan->tx_q);
  l2cap_ertm_send(chan);
  break;
 case 131:
  BT_DBG("Enter LOCAL_BUSY");
  set_bit(CONN_LOCAL_BUSY, &chan->conn_state);

  if (chan->rx_state == L2CAP_RX_STATE_SREJ_SENT) {



   l2cap_abort_rx_srej_sent(chan);
  }

  l2cap_send_ack(chan);

  break;
 case 132:
  BT_DBG("Exit LOCAL_BUSY");
  clear_bit(CONN_LOCAL_BUSY, &chan->conn_state);

  if (test_bit(CONN_RNR_SENT, &chan->conn_state)) {
   struct l2cap_ctrl local_control;

   memset(&local_control, 0, sizeof(local_control));
   local_control.sframe = 1;
   local_control.super = L2CAP_SUPER_RR;
   local_control.poll = 1;
   local_control.reqseq = chan->buffer_seq;
   l2cap_send_sframe(chan, &local_control);

   chan->retry_count = 1;
   __set_monitor_timer(chan);
   chan->tx_state = L2CAP_TX_STATE_WAIT_F;
  }
  break;
 case 129:
  l2cap_process_reqseq(chan, control->reqseq);
  break;
 case 133:
  l2cap_send_rr_or_rnr(chan, 1);
  chan->retry_count = 1;
  __set_monitor_timer(chan);
  __clear_ack_timer(chan);
  chan->tx_state = L2CAP_TX_STATE_WAIT_F;
  break;
 case 128:
  l2cap_send_rr_or_rnr(chan, 1);
  chan->retry_count = 1;
  __set_monitor_timer(chan);
  chan->tx_state = L2CAP_TX_STATE_WAIT_F;
  break;
 case 130:

  break;
 default:
  break;
 }
}
