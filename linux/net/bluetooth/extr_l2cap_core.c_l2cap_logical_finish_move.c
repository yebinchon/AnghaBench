
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_chan {int move_state; int move_role; int conn_state; int conn; TYPE_1__* hs_hcon; } ;
struct hci_chan {TYPE_1__* conn; } ;
struct TYPE_2__ {int l2cap_data; } ;


 int BT_DBG (char*,int) ;
 int CONN_LOCAL_BUSY ;
 int L2CAP_MC_CONFIRMED ;
 int L2CAP_MOVE_ROLE_INITIATOR ;
 int L2CAP_MOVE_ROLE_RESPONDER ;
 int L2CAP_MOVE_STABLE ;
 int L2CAP_MOVE_WAIT_CONFIRM ;
 int L2CAP_MOVE_WAIT_CONFIRM_RSP ;
 int L2CAP_MOVE_WAIT_LOCAL_BUSY ;


 int L2CAP_MOVE_WAIT_RSP_SUCCESS ;
 int L2CAP_MR_SUCCESS ;
 int __release_logical_link (struct l2cap_chan*) ;
 int l2cap_send_move_chan_cfm (struct l2cap_chan*,int ) ;
 int l2cap_send_move_chan_rsp (struct l2cap_chan*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void l2cap_logical_finish_move(struct l2cap_chan *chan,
          struct hci_chan *hchan)
{
 chan->hs_hcon = hchan->conn;
 chan->hs_hcon->l2cap_data = chan->conn;

 BT_DBG("move_state %d", chan->move_state);

 switch (chan->move_state) {
 case 128:



  chan->move_state = L2CAP_MOVE_WAIT_RSP_SUCCESS;
  break;
 case 129:
  if (test_bit(CONN_LOCAL_BUSY, &chan->conn_state)) {
   chan->move_state = L2CAP_MOVE_WAIT_LOCAL_BUSY;
  } else if (chan->move_role == L2CAP_MOVE_ROLE_INITIATOR) {
   chan->move_state = L2CAP_MOVE_WAIT_CONFIRM_RSP;
   l2cap_send_move_chan_cfm(chan, L2CAP_MC_CONFIRMED);
  } else if (chan->move_role == L2CAP_MOVE_ROLE_RESPONDER) {
   chan->move_state = L2CAP_MOVE_WAIT_CONFIRM;
   l2cap_send_move_chan_rsp(chan, L2CAP_MR_SUCCESS);
  }
  break;
 default:

  __release_logical_link(chan);

  chan->move_state = L2CAP_MOVE_STABLE;
 }
}
