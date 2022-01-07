
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_chan {scalar_t__ state; int move_role; int remote_amp_id; int local_amp_id; } ;


 scalar_t__ BT_CLOSED ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct l2cap_chan*,int,int ,int ) ;
 scalar_t__ BT_DISCONN ;


 int L2CAP_MR_SUCCESS ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 int l2cap_do_create (struct l2cap_chan*,int,int ,int ) ;
 int l2cap_do_move_cancel (struct l2cap_chan*,int) ;
 int l2cap_do_move_initiate (struct l2cap_chan*,int ,int ) ;
 int l2cap_do_move_respond (struct l2cap_chan*,int) ;

void __l2cap_physical_cfm(struct l2cap_chan *chan, int result)
{
 u8 local_amp_id = chan->local_amp_id;
 u8 remote_amp_id = chan->remote_amp_id;

 BT_DBG("chan %p, result %d, local_amp_id %d, remote_amp_id %d",
        chan, result, local_amp_id, remote_amp_id);

 if (chan->state == BT_DISCONN || chan->state == BT_CLOSED) {
  l2cap_chan_unlock(chan);
  return;
 }

 if (chan->state != BT_CONNECTED) {
  l2cap_do_create(chan, result, local_amp_id, remote_amp_id);
 } else if (result != L2CAP_MR_SUCCESS) {
  l2cap_do_move_cancel(chan, result);
 } else {
  switch (chan->move_role) {
  case 129:
   l2cap_do_move_initiate(chan, local_amp_id,
            remote_amp_id);
   break;
  case 128:
   l2cap_do_move_respond(chan, result);
   break;
  default:
   l2cap_do_move_cancel(chan, result);
   break;
  }
 }
}
