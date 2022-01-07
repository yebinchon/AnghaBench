
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int rx_state; int srej_q; int srej_list; int buffer_seq; int expected_tx_seq; } ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 int L2CAP_RX_STATE_RECV ;
 int l2cap_seq_list_clear (int *) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void l2cap_abort_rx_srej_sent(struct l2cap_chan *chan)
{
 BT_DBG("chan %p", chan);

 chan->expected_tx_seq = chan->buffer_seq;
 l2cap_seq_list_clear(&chan->srej_list);
 skb_queue_purge(&chan->srej_q);
 chan->rx_state = L2CAP_RX_STATE_RECV;
}
