
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct l2cap_ctrl {int sframe; scalar_t__ reqseq; int super; } ;
struct l2cap_chan {scalar_t__ buffer_seq; scalar_t__ last_acked_seq; scalar_t__ rx_state; int ack_win; int conn_state; } ;
typedef int control ;


 int BT_DBG (char*,...) ;
 int CONN_LOCAL_BUSY ;
 int CONN_REMOTE_BUSY ;
 scalar_t__ L2CAP_RX_STATE_RECV ;
 int L2CAP_SUPER_RNR ;
 int L2CAP_SUPER_RR ;
 int __clear_ack_timer (struct l2cap_chan*) ;
 int __seq_offset (struct l2cap_chan*,scalar_t__,scalar_t__) ;
 int __set_ack_timer (struct l2cap_chan*) ;
 int l2cap_ertm_send (struct l2cap_chan*) ;
 int l2cap_send_sframe (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int memset (struct l2cap_ctrl*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void l2cap_send_ack(struct l2cap_chan *chan)
{
 struct l2cap_ctrl control;
 u16 frames_to_ack = __seq_offset(chan, chan->buffer_seq,
      chan->last_acked_seq);
 int threshold;

 BT_DBG("chan %p last_acked_seq %d buffer_seq %d",
        chan, chan->last_acked_seq, chan->buffer_seq);

 memset(&control, 0, sizeof(control));
 control.sframe = 1;

 if (test_bit(CONN_LOCAL_BUSY, &chan->conn_state) &&
     chan->rx_state == L2CAP_RX_STATE_RECV) {
  __clear_ack_timer(chan);
  control.super = L2CAP_SUPER_RNR;
  control.reqseq = chan->buffer_seq;
  l2cap_send_sframe(chan, &control);
 } else {
  if (!test_bit(CONN_REMOTE_BUSY, &chan->conn_state)) {
   l2cap_ertm_send(chan);

   if (chan->buffer_seq == chan->last_acked_seq)
    frames_to_ack = 0;
  }




  threshold = chan->ack_win;
  threshold += threshold << 1;
  threshold >>= 2;

  BT_DBG("frames_to_ack %u, threshold %d", frames_to_ack,
         threshold);

  if (frames_to_ack >= threshold) {
   __clear_ack_timer(chan);
   control.super = L2CAP_SUPER_RR;
   control.reqseq = chan->buffer_seq;
   l2cap_send_sframe(chan, &control);
   frames_to_ack = 0;
  }

  if (frames_to_ack)
   __set_ack_timer(chan);
 }
}
