
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_ctrl {int dummy; } ;
struct l2cap_chan {int dummy; } ;


 int BT_DBG (char*,struct l2cap_chan*,struct l2cap_ctrl*) ;
 int L2CAP_EV_RECV_REQSEQ_AND_FBIT ;
 int l2cap_tx (struct l2cap_chan*,struct l2cap_ctrl*,int *,int ) ;

__attribute__((used)) static void l2cap_pass_to_tx(struct l2cap_chan *chan,
        struct l2cap_ctrl *control)
{
 BT_DBG("chan %p, control %p", chan, control);
 l2cap_tx(chan, control, ((void*)0), L2CAP_EV_RECV_REQSEQ_AND_FBIT);
}
