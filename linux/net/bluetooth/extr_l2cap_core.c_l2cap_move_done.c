
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_chan {int move_role; scalar_t__ mode; int rx_state; int move_state; } ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 int L2CAP_EV_EXPLICIT_POLL ;
 scalar_t__ L2CAP_MODE_ERTM ;

 int L2CAP_MOVE_ROLE_NONE ;

 int L2CAP_MOVE_STABLE ;
 int L2CAP_RX_STATE_WAIT_F ;
 int L2CAP_RX_STATE_WAIT_P ;
 int l2cap_tx (struct l2cap_chan*,int *,int *,int ) ;

__attribute__((used)) static void l2cap_move_done(struct l2cap_chan *chan)
{
 u8 move_role = chan->move_role;
 BT_DBG("chan %p", chan);

 chan->move_state = L2CAP_MOVE_STABLE;
 chan->move_role = L2CAP_MOVE_ROLE_NONE;

 if (chan->mode != L2CAP_MODE_ERTM)
  return;

 switch (move_role) {
 case 129:
  l2cap_tx(chan, ((void*)0), ((void*)0), L2CAP_EV_EXPLICIT_POLL);
  chan->rx_state = L2CAP_RX_STATE_WAIT_F;
  break;
 case 128:
  chan->rx_state = L2CAP_RX_STATE_WAIT_P;
  break;
 }
}
