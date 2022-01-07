
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_ctrl {int sframe; int final; int super; int reqseq; } ;
struct l2cap_chan {scalar_t__ unacked_frames; int conn_state; int buffer_seq; } ;
typedef int control ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 int CONN_LOCAL_BUSY ;
 int CONN_REMOTE_BUSY ;
 int CONN_SEND_FBIT ;
 int L2CAP_SUPER_RNR ;
 int L2CAP_SUPER_RR ;
 int __set_retrans_timer (struct l2cap_chan*) ;
 int l2cap_ertm_send (struct l2cap_chan*) ;
 int l2cap_send_sframe (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int memset (struct l2cap_ctrl*,int ,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void l2cap_send_i_or_rr_or_rnr(struct l2cap_chan *chan)
{
 struct l2cap_ctrl control;

 BT_DBG("chan %p", chan);

 memset(&control, 0, sizeof(control));
 control.sframe = 1;
 control.final = 1;
 control.reqseq = chan->buffer_seq;
 set_bit(CONN_SEND_FBIT, &chan->conn_state);

 if (test_bit(CONN_LOCAL_BUSY, &chan->conn_state)) {
  control.super = L2CAP_SUPER_RNR;
  l2cap_send_sframe(chan, &control);
 }

 if (test_and_clear_bit(CONN_REMOTE_BUSY, &chan->conn_state) &&
     chan->unacked_frames > 0)
  __set_retrans_timer(chan);


 l2cap_ertm_send(chan);

 if (!test_bit(CONN_LOCAL_BUSY, &chan->conn_state) &&
     test_bit(CONN_SEND_FBIT, &chan->conn_state)) {



  control.super = L2CAP_SUPER_RR;
  l2cap_send_sframe(chan, &control);
 }
}
