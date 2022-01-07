
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int conn; } ;


 int BT_DBG (char*,struct l2cap_chan*,int ,int ,int) ;
 int state_to_string (int) ;

__attribute__((used)) static void chan_state_change_cb(struct l2cap_chan *chan, int state, int err)
{
 BT_DBG("chan %p conn %p state %s err %d", chan, chan->conn,
        state_to_string(state), err);
}
