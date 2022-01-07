
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_ctrl {int sframe; int poll; int reqseq; int super; } ;
struct l2cap_chan {int buffer_seq; int conn_state; } ;
typedef int control ;


 int BT_DBG (char*,struct l2cap_chan*,int) ;
 int CONN_LOCAL_BUSY ;
 int L2CAP_SUPER_RNR ;
 int L2CAP_SUPER_RR ;
 int l2cap_send_sframe (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int memset (struct l2cap_ctrl*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void l2cap_send_rr_or_rnr(struct l2cap_chan *chan, bool poll)
{
 struct l2cap_ctrl control;

 BT_DBG("chan %p, poll %d", chan, poll);

 memset(&control, 0, sizeof(control));
 control.sframe = 1;
 control.poll = poll;

 if (test_bit(CONN_LOCAL_BUSY, &chan->conn_state))
  control.super = L2CAP_SUPER_RNR;
 else
  control.super = L2CAP_SUPER_RR;

 control.reqseq = chan->buffer_seq;
 l2cap_send_sframe(chan, &control);
}
