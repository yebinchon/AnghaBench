
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {scalar_t__ tx_win; scalar_t__ ack_win; scalar_t__ tx_win_max; int flags; int conn; } ;


 int FLAG_EXT_CTRL ;
 scalar_t__ L2CAP_DEFAULT_EXT_WINDOW ;
 scalar_t__ L2CAP_DEFAULT_TX_WINDOW ;
 scalar_t__ __l2cap_ews_supported (int ) ;
 scalar_t__ min_t (int ,scalar_t__,scalar_t__) ;
 int set_bit (int ,int *) ;
 int u16 ;

__attribute__((used)) static inline void l2cap_txwin_setup(struct l2cap_chan *chan)
{
 if (chan->tx_win > L2CAP_DEFAULT_TX_WINDOW &&
     __l2cap_ews_supported(chan->conn)) {

  set_bit(FLAG_EXT_CTRL, &chan->flags);
  chan->tx_win_max = L2CAP_DEFAULT_EXT_WINDOW;
 } else {
  chan->tx_win = min_t(u16, chan->tx_win,
         L2CAP_DEFAULT_TX_WINDOW);
  chan->tx_win_max = L2CAP_DEFAULT_TX_WINDOW;
 }
 chan->ack_win = chan->tx_win;
}
