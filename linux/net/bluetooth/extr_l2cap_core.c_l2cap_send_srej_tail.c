
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_ctrl {int sframe; scalar_t__ reqseq; int super; } ;
struct TYPE_2__ {scalar_t__ tail; } ;
struct l2cap_chan {TYPE_1__ srej_list; } ;
typedef int control ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 scalar_t__ L2CAP_SEQ_LIST_CLEAR ;
 int L2CAP_SUPER_SREJ ;
 int l2cap_send_sframe (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int memset (struct l2cap_ctrl*,int ,int) ;

__attribute__((used)) static void l2cap_send_srej_tail(struct l2cap_chan *chan)
{
 struct l2cap_ctrl control;

 BT_DBG("chan %p", chan);

 if (chan->srej_list.tail == L2CAP_SEQ_LIST_CLEAR)
  return;

 memset(&control, 0, sizeof(control));
 control.sframe = 1;
 control.super = L2CAP_SUPER_SREJ;
 control.reqseq = chan->srej_list.tail;
 l2cap_send_sframe(chan, &control);
}
