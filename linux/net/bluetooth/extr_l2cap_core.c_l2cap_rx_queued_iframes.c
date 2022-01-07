
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct l2cap_chan {int rx_state; int srej_q; int buffer_seq; int conn_state; } ;
struct TYPE_2__ {int l2cap; } ;


 int BT_DBG (char*,struct l2cap_chan*,...) ;
 int CONN_LOCAL_BUSY ;
 int L2CAP_RX_STATE_RECV ;
 int __next_seq (struct l2cap_chan*,int ) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 struct sk_buff* l2cap_ertm_seq_in_queue (int *,int ) ;
 int l2cap_reassemble_sdu (struct l2cap_chan*,struct sk_buff*,int *) ;
 int l2cap_send_ack (struct l2cap_chan*) ;
 scalar_t__ skb_queue_empty (int *) ;
 int skb_queue_len (int *) ;
 int skb_unlink (struct sk_buff*,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int l2cap_rx_queued_iframes(struct l2cap_chan *chan)
{
 int err = 0;




 BT_DBG("chan %p", chan);

 while (!test_bit(CONN_LOCAL_BUSY, &chan->conn_state)) {
  struct sk_buff *skb;
  BT_DBG("Searching for skb with txseq %d (queue len %d)",
         chan->buffer_seq, skb_queue_len(&chan->srej_q));

  skb = l2cap_ertm_seq_in_queue(&chan->srej_q, chan->buffer_seq);

  if (!skb)
   break;

  skb_unlink(skb, &chan->srej_q);
  chan->buffer_seq = __next_seq(chan, chan->buffer_seq);
  err = l2cap_reassemble_sdu(chan, skb, &bt_cb(skb)->l2cap);
  if (err)
   break;
 }

 if (skb_queue_empty(&chan->srej_q)) {
  chan->rx_state = L2CAP_RX_STATE_RECV;
  l2cap_send_ack(chan);
 }

 return err;
}
