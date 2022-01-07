
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct l2cap_ctrl {void* txseq; } ;
struct l2cap_chan {void* expected_tx_seq; void* last_acked_seq; scalar_t__ sdu_len; int * sdu_last_frag; struct sk_buff* sdu; void* buffer_seq; int rx_state; } ;


 int BT_DBG (char*,struct l2cap_chan*,...) ;
 scalar_t__ L2CAP_TXSEQ_EXPECTED ;
 void* __next_seq (struct l2cap_chan*,void*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ l2cap_classify_txseq (struct l2cap_chan*,void*) ;
 int l2cap_pass_to_tx (struct l2cap_chan*,struct l2cap_ctrl*) ;
 int l2cap_reassemble_sdu (struct l2cap_chan*,struct sk_buff*,struct l2cap_ctrl*) ;

__attribute__((used)) static int l2cap_stream_rx(struct l2cap_chan *chan, struct l2cap_ctrl *control,
      struct sk_buff *skb)
{
 BT_DBG("chan %p, control %p, skb %p, state %d", chan, control, skb,
        chan->rx_state);

 if (l2cap_classify_txseq(chan, control->txseq) ==
     L2CAP_TXSEQ_EXPECTED) {
  l2cap_pass_to_tx(chan, control);

  BT_DBG("buffer_seq %d->%d", chan->buffer_seq,
         __next_seq(chan, chan->buffer_seq));

  chan->buffer_seq = __next_seq(chan, chan->buffer_seq);

  l2cap_reassemble_sdu(chan, skb, control);
 } else {
  if (chan->sdu) {
   kfree_skb(chan->sdu);
   chan->sdu = ((void*)0);
  }
  chan->sdu_last_frag = ((void*)0);
  chan->sdu_len = 0;

  if (skb) {
   BT_DBG("Freeing %p", skb);
   kfree_skb(skb);
  }
 }

 chan->last_acked_seq = control->txseq;
 chan->expected_tx_seq = __next_seq(chan, control->txseq);

 return 0;
}
