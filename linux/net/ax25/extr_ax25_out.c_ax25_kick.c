
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {int * sk; } ;
struct TYPE_10__ {scalar_t__ state; int condition; unsigned short va; unsigned short vs; unsigned short window; unsigned short modulus; int ack_queue; TYPE_1__* ax25_dev; int write_queue; } ;
typedef TYPE_2__ ax25_cb ;
struct TYPE_9__ {int* values; } ;


 int AX25_COND_ACK_PENDING ;
 int AX25_COND_PEER_RX_BUSY ;
 int AX25_POLLOFF ;
 int AX25_POLLON ;



 scalar_t__ AX25_STATE_3 ;
 scalar_t__ AX25_STATE_4 ;
 size_t AX25_VALUES_PROTOCOL ;
 int GFP_ATOMIC ;
 int ax25_calculate_t1 (TYPE_2__*) ;
 int ax25_send_iframe (TYPE_2__*,struct sk_buff*,int ) ;
 int ax25_start_t1timer (TYPE_2__*) ;
 int ax25_stop_t3timer (TYPE_2__*) ;
 int ax25_t1timer_running (TYPE_2__*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int * skb_peek (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_set_owner_w (struct sk_buff*,int *) ;

void ax25_kick(ax25_cb *ax25)
{
 struct sk_buff *skb, *skbn;
 int last = 1;
 unsigned short start, end, next;

 if (ax25->state != AX25_STATE_3 && ax25->state != AX25_STATE_4)
  return;

 if (ax25->condition & AX25_COND_PEER_RX_BUSY)
  return;

 if (skb_peek(&ax25->write_queue) == ((void*)0))
  return;

 start = (skb_peek(&ax25->ack_queue) == ((void*)0)) ? ax25->va : ax25->vs;
 end = (ax25->va + ax25->window) % ax25->modulus;

 if (start == end)
  return;
 skb = skb_dequeue(&ax25->write_queue);
 if (!skb)
  return;

 ax25->vs = start;

 do {
  if ((skbn = skb_clone(skb, GFP_ATOMIC)) == ((void*)0)) {
   skb_queue_head(&ax25->write_queue, skb);
   break;
  }

  if (skb->sk != ((void*)0))
   skb_set_owner_w(skbn, skb->sk);

  next = (ax25->vs + 1) % ax25->modulus;
  last = (next == end);






  switch (ax25->ax25_dev->values[AX25_VALUES_PROTOCOL]) {
  case 128:
  case 129:
   ax25_send_iframe(ax25, skbn, (last) ? AX25_POLLON : AX25_POLLOFF);
   break;






  }

  ax25->vs = next;




  skb_queue_tail(&ax25->ack_queue, skb);

 } while (!last && (skb = skb_dequeue(&ax25->write_queue)) != ((void*)0));

 ax25->condition &= ~AX25_COND_ACK_PENDING;

 if (!ax25_t1timer_running(ax25)) {
  ax25_stop_t3timer(ax25);
  ax25_calculate_t1(ax25);
  ax25_start_t1timer(ax25);
 }
}
