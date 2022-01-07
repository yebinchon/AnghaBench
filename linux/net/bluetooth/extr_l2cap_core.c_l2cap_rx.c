
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct l2cap_ctrl {int reqseq; } ;
struct l2cap_chan {int rx_state; int expected_ack_seq; int next_tx_seq; } ;


 int BT_DBG (char*,struct l2cap_chan*,struct l2cap_ctrl*,int ,...) ;
 int ECONNRESET ;




 scalar_t__ __valid_reqseq (struct l2cap_chan*,int ) ;
 int l2cap_rx_state_recv (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int ) ;
 int l2cap_rx_state_srej_sent (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int ) ;
 int l2cap_rx_state_wait_f (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int ) ;
 int l2cap_rx_state_wait_p (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int ) ;
 int l2cap_send_disconn_req (struct l2cap_chan*,int ) ;

__attribute__((used)) static int l2cap_rx(struct l2cap_chan *chan, struct l2cap_ctrl *control,
      struct sk_buff *skb, u8 event)
{
 int err = 0;

 BT_DBG("chan %p, control %p, skb %p, event %d, state %d", chan,
        control, skb, event, chan->rx_state);

 if (__valid_reqseq(chan, control->reqseq)) {
  switch (chan->rx_state) {
  case 131:
   err = l2cap_rx_state_recv(chan, control, skb, event);
   break;
  case 130:
   err = l2cap_rx_state_srej_sent(chan, control, skb,
             event);
   break;
  case 128:
   err = l2cap_rx_state_wait_p(chan, control, skb, event);
   break;
  case 129:
   err = l2cap_rx_state_wait_f(chan, control, skb, event);
   break;
  default:

   break;
  }
 } else {
  BT_DBG("Invalid reqseq %d (next_tx_seq %d, expected_ack_seq %d",
         control->reqseq, chan->next_tx_seq,
         chan->expected_ack_seq);
  l2cap_send_disconn_req(chan, ECONNRESET);
 }

 return err;
}
