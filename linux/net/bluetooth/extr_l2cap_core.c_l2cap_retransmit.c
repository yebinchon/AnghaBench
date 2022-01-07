
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_ctrl {int reqseq; } ;
struct l2cap_chan {int retrans_list; } ;


 int BT_DBG (char*,struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_ertm_resend (struct l2cap_chan*) ;
 int l2cap_seq_list_append (int *,int ) ;

__attribute__((used)) static void l2cap_retransmit(struct l2cap_chan *chan,
        struct l2cap_ctrl *control)
{
 BT_DBG("chan %p, control %p", chan, control);

 l2cap_seq_list_append(&chan->retrans_list, control->reqseq);
 l2cap_ertm_resend(chan);
}
