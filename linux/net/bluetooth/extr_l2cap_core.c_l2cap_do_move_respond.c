
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_chan {int move_state; int conn; TYPE_1__* hs_hcon; } ;
struct hci_chan {scalar_t__ state; TYPE_1__* conn; } ;
struct TYPE_2__ {int l2cap_data; } ;


 scalar_t__ BT_CONNECTED ;
 int L2CAP_MOVE_WAIT_CONFIRM ;
 int L2CAP_MOVE_WAIT_LOGICAL_CFM ;
 int L2CAP_MR_NOT_ALLOWED ;
 int L2CAP_MR_SUCCESS ;
 int l2cap_logical_cfm (struct l2cap_chan*,struct hci_chan*,int ) ;
 int l2cap_send_move_chan_rsp (struct l2cap_chan*,int ) ;

__attribute__((used)) static void l2cap_do_move_respond(struct l2cap_chan *chan, int result)
{
 struct hci_chan *hchan = ((void*)0);



 if (hchan) {
  if (hchan->state == BT_CONNECTED) {

   chan->hs_hcon = hchan->conn;
   chan->hs_hcon->l2cap_data = chan->conn;
   chan->move_state = L2CAP_MOVE_WAIT_CONFIRM;
   l2cap_send_move_chan_rsp(chan, L2CAP_MR_SUCCESS);

   l2cap_logical_cfm(chan, hchan, L2CAP_MR_SUCCESS);
  } else {

   chan->move_state = L2CAP_MOVE_WAIT_LOGICAL_CFM;
  }
 } else {

  l2cap_send_move_chan_rsp(chan, L2CAP_MR_NOT_ALLOWED);
 }
}
