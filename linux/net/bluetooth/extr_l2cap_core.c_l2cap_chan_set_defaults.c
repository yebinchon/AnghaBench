
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int flags; scalar_t__ conf_state; int monitor_timeout; int retrans_timeout; int flush_to; int sec_level; void* ack_win; void* tx_win; void* remote_tx_win; int max_tx; int remote_max_tx; void* tx_win_max; int fcs; } ;


 int BT_SECURITY_LOW ;
 int FLAG_FORCE_ACTIVE ;
 int L2CAP_DEFAULT_FLUSH_TO ;
 int L2CAP_DEFAULT_MAX_TX ;
 int L2CAP_DEFAULT_MONITOR_TO ;
 int L2CAP_DEFAULT_RETRANS_TO ;
 void* L2CAP_DEFAULT_TX_WINDOW ;
 int L2CAP_FCS_CRC16 ;
 int set_bit (int ,int *) ;

void l2cap_chan_set_defaults(struct l2cap_chan *chan)
{
 chan->fcs = L2CAP_FCS_CRC16;
 chan->max_tx = L2CAP_DEFAULT_MAX_TX;
 chan->tx_win = L2CAP_DEFAULT_TX_WINDOW;
 chan->tx_win_max = L2CAP_DEFAULT_TX_WINDOW;
 chan->remote_max_tx = chan->max_tx;
 chan->remote_tx_win = chan->tx_win;
 chan->ack_win = L2CAP_DEFAULT_TX_WINDOW;
 chan->sec_level = BT_SECURITY_LOW;
 chan->flush_to = L2CAP_DEFAULT_FLUSH_TO;
 chan->retrans_timeout = L2CAP_DEFAULT_RETRANS_TO;
 chan->monitor_timeout = L2CAP_DEFAULT_MONITOR_TO;
 chan->conf_state = 0;

 set_bit(FLAG_FORCE_ACTIVE, &chan->flags);
}
