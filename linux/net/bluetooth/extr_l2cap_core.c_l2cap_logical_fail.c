
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {scalar_t__ state; int move_role; int move_state; } ;


 scalar_t__ BT_CONNECTED ;
 int ECONNRESET ;
 int L2CAP_MC_UNCONFIRMED ;


 int L2CAP_MOVE_WAIT_LOGICAL_CFM ;
 int L2CAP_MOVE_WAIT_LOGICAL_COMP ;
 int L2CAP_MR_NOT_SUPP ;
 int l2cap_move_done (struct l2cap_chan*) ;
 int l2cap_send_disconn_req (struct l2cap_chan*,int ) ;
 int l2cap_send_move_chan_cfm (struct l2cap_chan*,int ) ;
 int l2cap_send_move_chan_rsp (struct l2cap_chan*,int ) ;

__attribute__((used)) static void l2cap_logical_fail(struct l2cap_chan *chan)
{

 if (chan->state != BT_CONNECTED) {

  l2cap_send_disconn_req(chan, ECONNRESET);
  return;
 }

 switch (chan->move_role) {
 case 128:
  l2cap_move_done(chan);
  l2cap_send_move_chan_rsp(chan, L2CAP_MR_NOT_SUPP);
  break;
 case 129:
  if (chan->move_state == L2CAP_MOVE_WAIT_LOGICAL_COMP ||
      chan->move_state == L2CAP_MOVE_WAIT_LOGICAL_CFM) {



   l2cap_move_done(chan);
  }




  l2cap_send_move_chan_cfm(chan, L2CAP_MC_UNCONFIRMED);
  break;
 }
}
