
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {scalar_t__ mode; int srej_list; int remote_tx_win; int retrans_list; int tx_win; int srej_q; int ack_timer; int monitor_timer; int retrans_timer; int tx_state; int rx_state; int move_role; int move_state; void* move_id; void* local_amp_id; int tx_q; scalar_t__ sdu_len; int * sdu_last_frag; int * sdu; scalar_t__ last_acked_seq; scalar_t__ frames_sent; scalar_t__ buffer_seq; scalar_t__ unacked_frames; scalar_t__ expected_ack_seq; scalar_t__ expected_tx_seq; scalar_t__ next_tx_seq; } ;


 void* AMP_ID_BREDR ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ L2CAP_MODE_ERTM ;
 int L2CAP_MOVE_ROLE_NONE ;
 int L2CAP_MOVE_STABLE ;
 int L2CAP_RX_STATE_RECV ;
 int L2CAP_TX_STATE_XMIT ;
 int l2cap_ack_timeout ;
 int l2cap_monitor_timeout ;
 int l2cap_retrans_timeout ;
 int l2cap_seq_list_free (int *) ;
 int l2cap_seq_list_init (int *,int ) ;
 int skb_queue_head_init (int *) ;

int l2cap_ertm_init(struct l2cap_chan *chan)
{
 int err;

 chan->next_tx_seq = 0;
 chan->expected_tx_seq = 0;
 chan->expected_ack_seq = 0;
 chan->unacked_frames = 0;
 chan->buffer_seq = 0;
 chan->frames_sent = 0;
 chan->last_acked_seq = 0;
 chan->sdu = ((void*)0);
 chan->sdu_last_frag = ((void*)0);
 chan->sdu_len = 0;

 skb_queue_head_init(&chan->tx_q);

 chan->local_amp_id = AMP_ID_BREDR;
 chan->move_id = AMP_ID_BREDR;
 chan->move_state = L2CAP_MOVE_STABLE;
 chan->move_role = L2CAP_MOVE_ROLE_NONE;

 if (chan->mode != L2CAP_MODE_ERTM)
  return 0;

 chan->rx_state = L2CAP_RX_STATE_RECV;
 chan->tx_state = L2CAP_TX_STATE_XMIT;

 INIT_DELAYED_WORK(&chan->retrans_timer, l2cap_retrans_timeout);
 INIT_DELAYED_WORK(&chan->monitor_timer, l2cap_monitor_timeout);
 INIT_DELAYED_WORK(&chan->ack_timer, l2cap_ack_timeout);

 skb_queue_head_init(&chan->srej_q);

 err = l2cap_seq_list_init(&chan->srej_list, chan->tx_win);
 if (err < 0)
  return err;

 err = l2cap_seq_list_init(&chan->retrans_list, chan->remote_tx_win);
 if (err < 0)
  l2cap_seq_list_free(&chan->srej_list);

 return err;
}
