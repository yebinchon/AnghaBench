
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int state; struct amp_mgr* data; } ;
struct amp_mgr {int dummy; } ;



 int BT_DBG (char*,struct l2cap_chan*,int ) ;
 int amp_mgr_put (struct amp_mgr*) ;
 int state_to_string (int) ;

__attribute__((used)) static void a2mp_chan_state_change_cb(struct l2cap_chan *chan, int state,
          int err)
{
 struct amp_mgr *mgr = chan->data;

 if (!mgr)
  return;

 BT_DBG("chan %p state %s", chan, state_to_string(state));

 chan->state = state;

 switch (state) {
 case 128:
  if (mgr)
   amp_mgr_put(mgr);
  break;
 }
}
