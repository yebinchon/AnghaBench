
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {scalar_t__ local_amp_id; scalar_t__ chan_policy; scalar_t__ move_id; int move_state; void* move_role; } ;


 scalar_t__ AMP_ID_BREDR ;
 scalar_t__ BT_CHANNEL_POLICY_AMP_PREFERRED ;
 int BT_DBG (char*,struct l2cap_chan*) ;
 void* L2CAP_MOVE_ROLE_INITIATOR ;
 int L2CAP_MOVE_WAIT_PREPARE ;
 int L2CAP_MOVE_WAIT_RSP_SUCCESS ;
 int l2cap_move_setup (struct l2cap_chan*) ;
 int l2cap_send_move_chan_req (struct l2cap_chan*,int ) ;

void l2cap_move_start(struct l2cap_chan *chan)
{
 BT_DBG("chan %p", chan);

 if (chan->local_amp_id == AMP_ID_BREDR) {
  if (chan->chan_policy != BT_CHANNEL_POLICY_AMP_PREFERRED)
   return;
  chan->move_role = L2CAP_MOVE_ROLE_INITIATOR;
  chan->move_state = L2CAP_MOVE_WAIT_PREPARE;

 } else {
  chan->move_role = L2CAP_MOVE_ROLE_INITIATOR;
  chan->move_state = L2CAP_MOVE_WAIT_RSP_SUCCESS;
  chan->move_id = 0;
  l2cap_move_setup(chan);
  l2cap_send_move_chan_req(chan, 0);
 }
}
