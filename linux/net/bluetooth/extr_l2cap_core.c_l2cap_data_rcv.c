
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; } ;
struct l2cap_ctrl {scalar_t__ sar; scalar_t__ reqseq; scalar_t__ final; size_t txseq; scalar_t__ poll; size_t super; int sframe; } ;
struct l2cap_chan {scalar_t__ fcs; scalar_t__ mps; scalar_t__ mode; scalar_t__ tx_state; int data; } ;
struct TYPE_2__ {struct l2cap_ctrl l2cap; } ;


 int BT_DBG (char*,scalar_t__,scalar_t__,scalar_t__,size_t) ;
 int BT_ERR (char*,scalar_t__) ;
 int ECONNRESET ;
 int L2CAP_EV_RECV_IFRAME ;
 int const L2CAP_EV_RECV_REJ ;
 int const L2CAP_EV_RECV_RNR ;
 int const L2CAP_EV_RECV_RR ;
 int const L2CAP_EV_RECV_SREJ ;
 scalar_t__ L2CAP_FCS_CRC16 ;
 scalar_t__ L2CAP_FCS_SIZE ;
 scalar_t__ L2CAP_MODE_ERTM ;
 scalar_t__ L2CAP_MODE_STREAMING ;
 scalar_t__ L2CAP_SAR_START ;
 scalar_t__ L2CAP_SDULEN_SIZE ;
 scalar_t__ L2CAP_TX_STATE_WAIT_F ;
 int __unpack_control (struct l2cap_chan*,struct sk_buff*) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ l2cap_check_fcs (struct l2cap_chan*,struct sk_buff*) ;
 int l2cap_rx (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int ) ;
 int l2cap_send_disconn_req (struct l2cap_chan*,int ) ;
 int l2cap_stream_rx (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*) ;
 scalar_t__ sk_filter (int ,struct sk_buff*) ;

__attribute__((used)) static int l2cap_data_rcv(struct l2cap_chan *chan, struct sk_buff *skb)
{
 struct l2cap_ctrl *control = &bt_cb(skb)->l2cap;
 u16 len;
 u8 event;

 __unpack_control(chan, skb);

 len = skb->len;






 if (l2cap_check_fcs(chan, skb))
  goto drop;

 if (!control->sframe && control->sar == L2CAP_SAR_START)
  len -= L2CAP_SDULEN_SIZE;

 if (chan->fcs == L2CAP_FCS_CRC16)
  len -= L2CAP_FCS_SIZE;

 if (len > chan->mps) {
  l2cap_send_disconn_req(chan, ECONNRESET);
  goto drop;
 }

 if ((chan->mode == L2CAP_MODE_ERTM ||
      chan->mode == L2CAP_MODE_STREAMING) && sk_filter(chan->data, skb))
  goto drop;

 if (!control->sframe) {
  int err;

  BT_DBG("iframe sar %d, reqseq %d, final %d, txseq %d",
         control->sar, control->reqseq, control->final,
         control->txseq);




  if (control->final && chan->tx_state != L2CAP_TX_STATE_WAIT_F)
   goto drop;

  if (chan->mode != L2CAP_MODE_STREAMING) {
   event = L2CAP_EV_RECV_IFRAME;
   err = l2cap_rx(chan, control, skb, event);
  } else {
   err = l2cap_stream_rx(chan, control, skb);
  }

  if (err)
   l2cap_send_disconn_req(chan, ECONNRESET);
 } else {
  const u8 rx_func_to_event[4] = {
   L2CAP_EV_RECV_RR, L2CAP_EV_RECV_REJ,
   L2CAP_EV_RECV_RNR, L2CAP_EV_RECV_SREJ
  };


  if (chan->mode == L2CAP_MODE_STREAMING)
   goto drop;

  BT_DBG("sframe reqseq %d, final %d, poll %d, super %d",
         control->reqseq, control->final, control->poll,
         control->super);

  if (len != 0) {
   BT_ERR("Trailing bytes: %d in sframe", len);
   l2cap_send_disconn_req(chan, ECONNRESET);
   goto drop;
  }


  if (control->final && (control->poll ||
           chan->tx_state != L2CAP_TX_STATE_WAIT_F))
   goto drop;

  event = rx_func_to_event[control->super];
  if (l2cap_rx(chan, control, skb, event))
   l2cap_send_disconn_req(chan, ECONNRESET);
 }

 return 0;

drop:
 kfree_skb(skb);
 return 0;
}
