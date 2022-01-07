
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_chan {int move_state; int move_id; } ;


 int L2CAP_MOVE_WAIT_RSP ;
 int l2cap_move_setup (struct l2cap_chan*) ;
 int l2cap_send_move_chan_req (struct l2cap_chan*,int ) ;

__attribute__((used)) static void l2cap_do_move_initiate(struct l2cap_chan *chan, u8 local_amp_id,
       u8 remote_amp_id)
{
 l2cap_move_setup(chan);
 chan->move_id = local_amp_id;
 chan->move_state = L2CAP_MOVE_WAIT_RSP;

 l2cap_send_move_chan_req(chan, remote_amp_id);
}
