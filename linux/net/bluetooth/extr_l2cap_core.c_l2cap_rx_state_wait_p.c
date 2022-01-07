
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct l2cap_ctrl {int reqseq; int poll; } ;
struct l2cap_chan {int conn_state; scalar_t__ unacked_frames; int next_tx_seq; int * tx_send_head; int tx_q; } ;


 int BT_DBG (char*,struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int ) ;
 int CONN_SEND_FBIT ;
 int EPROTO ;
 int L2CAP_EV_RECV_IFRAME ;
 int l2cap_finish_move (struct l2cap_chan*) ;
 int l2cap_process_reqseq (struct l2cap_chan*,int ) ;
 int l2cap_rx_state_recv (struct l2cap_chan*,struct l2cap_ctrl*,int *,int ) ;
 int l2cap_send_i_or_rr_or_rnr (struct l2cap_chan*) ;
 int set_bit (int ,int *) ;
 int * skb_peek (int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static int l2cap_rx_state_wait_p(struct l2cap_chan *chan,
     struct l2cap_ctrl *control,
     struct sk_buff *skb, u8 event)
{
 int err;

 BT_DBG("chan %p, control %p, skb %p, event %d", chan, control, skb,
        event);

 if (!control->poll)
  return -EPROTO;

 l2cap_process_reqseq(chan, control->reqseq);

 if (!skb_queue_empty(&chan->tx_q))
  chan->tx_send_head = skb_peek(&chan->tx_q);
 else
  chan->tx_send_head = ((void*)0);




 chan->next_tx_seq = control->reqseq;
 chan->unacked_frames = 0;

 err = l2cap_finish_move(chan);
 if (err)
  return err;

 set_bit(CONN_SEND_FBIT, &chan->conn_state);
 l2cap_send_i_or_rr_or_rnr(chan);

 if (event == L2CAP_EV_RECV_IFRAME)
  return -EPROTO;

 return l2cap_rx_state_recv(chan, control, ((void*)0), event);
}
