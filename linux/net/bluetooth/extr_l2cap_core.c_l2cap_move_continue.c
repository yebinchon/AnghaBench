
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int move_state; int local_amp_id; int move_id; int conn; TYPE_1__* hs_hcon; int conn_state; } ;
struct hci_chan {TYPE_1__* conn; int state; } ;
struct TYPE_2__ {int l2cap_data; } ;


 int BT_CONNECTED ;
 int CONN_LOCAL_BUSY ;
 int L2CAP_MC_CONFIRMED ;
 int L2CAP_MC_UNCONFIRMED ;
 int L2CAP_MOVE_ERTX_TIMEOUT ;
 int L2CAP_MOVE_WAIT_CONFIRM_RSP ;
 int L2CAP_MOVE_WAIT_LOCAL_BUSY ;
 void* L2CAP_MOVE_WAIT_LOGICAL_CFM ;



 scalar_t__ L2CAP_MR_PEND ;
 scalar_t__ L2CAP_MR_SUCCESS ;
 int __clear_chan_timer (struct l2cap_chan*) ;
 int __set_chan_timer (struct l2cap_chan*,int ) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 struct l2cap_chan* l2cap_get_chan_by_scid (struct l2cap_conn*,scalar_t__) ;
 int l2cap_logical_cfm (struct l2cap_chan*,struct hci_chan*,scalar_t__) ;
 int l2cap_move_done (struct l2cap_chan*) ;
 int l2cap_send_move_chan_cfm (struct l2cap_chan*,int ) ;
 int l2cap_send_move_chan_cfm_icid (struct l2cap_conn*,scalar_t__) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void l2cap_move_continue(struct l2cap_conn *conn, u16 icid, u16 result)
{
 struct l2cap_chan *chan;
 struct hci_chan *hchan = ((void*)0);

 chan = l2cap_get_chan_by_scid(conn, icid);
 if (!chan) {
  l2cap_send_move_chan_cfm_icid(conn, icid);
  return;
 }

 __clear_chan_timer(chan);
 if (result == L2CAP_MR_PEND)
  __set_chan_timer(chan, L2CAP_MOVE_ERTX_TIMEOUT);

 switch (chan->move_state) {
 case 130:



  chan->move_state = L2CAP_MOVE_WAIT_LOGICAL_CFM;
  break;
 case 128:
  if (result == L2CAP_MR_PEND) {
   break;
  } else if (test_bit(CONN_LOCAL_BUSY,
        &chan->conn_state)) {
   chan->move_state = L2CAP_MOVE_WAIT_LOCAL_BUSY;
  } else {



   chan->move_state = L2CAP_MOVE_WAIT_CONFIRM_RSP;
   l2cap_send_move_chan_cfm(chan, L2CAP_MC_CONFIRMED);
  }
  break;
 case 129:

  if (result == L2CAP_MR_SUCCESS) {



   chan->move_state = L2CAP_MOVE_WAIT_LOGICAL_CFM;
  } else {



   chan->move_state = 130;
  }


  if (!hchan) {

   l2cap_send_move_chan_cfm(chan, L2CAP_MC_UNCONFIRMED);
   break;
  }




  if (hchan->state != BT_CONNECTED)
   break;



  chan->hs_hcon = hchan->conn;
  chan->hs_hcon->l2cap_data = chan->conn;

  if (result == L2CAP_MR_SUCCESS) {

   l2cap_send_move_chan_cfm(chan, L2CAP_MC_CONFIRMED);
  } else {



   chan->move_state = 128;
  }

  l2cap_logical_cfm(chan, hchan, L2CAP_MR_SUCCESS);
  break;
 default:

  chan->move_id = chan->local_amp_id;
  l2cap_move_done(chan);
  l2cap_send_move_chan_cfm(chan, L2CAP_MC_UNCONFIRMED);
 }

 l2cap_chan_unlock(chan);
}
