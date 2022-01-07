
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int tx_q; int tx_credits; } ;


 int BT_DBG (char*,...) ;
 int l2cap_do_send (struct l2cap_chan*,int ) ;
 int skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 int skb_queue_len (int *) ;

__attribute__((used)) static void l2cap_le_flowctl_send(struct l2cap_chan *chan)
{
 int sent = 0;

 BT_DBG("chan %p", chan);

 while (chan->tx_credits && !skb_queue_empty(&chan->tx_q)) {
  l2cap_do_send(chan, skb_dequeue(&chan->tx_q));
  chan->tx_credits--;
  sent++;
 }

 BT_DBG("Sent %d credits %u queued %u", sent, chan->tx_credits,
        skb_queue_len(&chan->tx_q));
}
