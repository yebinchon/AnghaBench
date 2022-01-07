
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct l2cap_ctrl {int sframe; scalar_t__ reqseq; int super; } ;
struct TYPE_3__ {scalar_t__ head; } ;
struct l2cap_chan {TYPE_1__ srej_list; } ;
typedef int control ;


 int BT_DBG (char*,struct l2cap_chan*,scalar_t__) ;
 scalar_t__ L2CAP_SEQ_LIST_CLEAR ;
 int L2CAP_SUPER_SREJ ;
 int l2cap_send_sframe (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_seq_list_append (TYPE_1__*,scalar_t__) ;
 scalar_t__ l2cap_seq_list_pop (TYPE_1__*) ;
 int memset (struct l2cap_ctrl*,int ,int) ;

__attribute__((used)) static void l2cap_send_srej_list(struct l2cap_chan *chan, u16 txseq)
{
 struct l2cap_ctrl control;
 u16 initial_head;
 u16 seq;

 BT_DBG("chan %p, txseq %u", chan, txseq);

 memset(&control, 0, sizeof(control));
 control.sframe = 1;
 control.super = L2CAP_SUPER_SREJ;


 initial_head = chan->srej_list.head;

 do {
  seq = l2cap_seq_list_pop(&chan->srej_list);
  if (seq == txseq || seq == L2CAP_SEQ_LIST_CLEAR)
   break;

  control.reqseq = seq;
  l2cap_send_sframe(chan, &control);
  l2cap_seq_list_append(&chan->srej_list, seq);
 } while (chan->srej_list.head != initial_head);
}
