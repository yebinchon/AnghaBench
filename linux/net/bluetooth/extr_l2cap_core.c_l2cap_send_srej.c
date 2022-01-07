
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct l2cap_ctrl {int sframe; scalar_t__ reqseq; int super; } ;
struct l2cap_chan {scalar_t__ expected_tx_seq; int srej_list; int srej_q; } ;
typedef int control ;


 int BT_DBG (char*,struct l2cap_chan*,scalar_t__) ;
 int L2CAP_SUPER_SREJ ;
 scalar_t__ __next_seq (struct l2cap_chan*,scalar_t__) ;
 int l2cap_ertm_seq_in_queue (int *,scalar_t__) ;
 int l2cap_send_sframe (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_seq_list_append (int *,scalar_t__) ;
 int memset (struct l2cap_ctrl*,int ,int) ;

__attribute__((used)) static void l2cap_send_srej(struct l2cap_chan *chan, u16 txseq)
{
 struct l2cap_ctrl control;
 u16 seq;

 BT_DBG("chan %p, txseq %u", chan, txseq);

 memset(&control, 0, sizeof(control));
 control.sframe = 1;
 control.super = L2CAP_SUPER_SREJ;

 for (seq = chan->expected_tx_seq; seq != txseq;
      seq = __next_seq(chan, seq)) {
  if (!l2cap_ertm_seq_in_queue(&chan->srej_q, seq)) {
   control.reqseq = seq;
   l2cap_send_sframe(chan, &control);
   l2cap_seq_list_append(&chan->srej_list, seq);
  }
 }

 chan->expected_tx_seq = __next_seq(chan, txseq);
}
