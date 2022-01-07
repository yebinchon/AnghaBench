
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_chan {scalar_t__ move_role; int move_state; } ;


 int EINVAL ;
 scalar_t__ L2CAP_MOVE_ROLE_NONE ;
 scalar_t__ L2CAP_MOVE_ROLE_RESPONDER ;
 int L2CAP_MOVE_STABLE ;
 int L2CAP_MR_BAD_ID ;
 int L2CAP_MR_NOT_ALLOWED ;
 int l2cap_ertm_send (struct l2cap_chan*) ;
 int l2cap_send_move_chan_rsp (struct l2cap_chan*,int ) ;

__attribute__((used)) static void l2cap_do_move_cancel(struct l2cap_chan *chan, int result)
{
 if (chan->move_role == L2CAP_MOVE_ROLE_RESPONDER) {
  u8 rsp_result;
  if (result == -EINVAL)
   rsp_result = L2CAP_MR_BAD_ID;
  else
   rsp_result = L2CAP_MR_NOT_ALLOWED;

  l2cap_send_move_chan_rsp(chan, rsp_result);
 }

 chan->move_role = L2CAP_MOVE_ROLE_NONE;
 chan->move_state = L2CAP_MOVE_STABLE;


 l2cap_ertm_send(chan);
}
