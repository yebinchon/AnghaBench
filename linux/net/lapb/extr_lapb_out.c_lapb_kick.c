
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ sk; } ;
struct lapb_cb {int mode; unsigned short va; unsigned short vs; unsigned short window; int condition; int ack_queue; int write_queue; } ;


 int GFP_ATOMIC ;
 int LAPB_ACK_PENDING_CONDITION ;
 unsigned short LAPB_EMODULUS ;
 int LAPB_EXTENDED ;
 int LAPB_PEER_RX_BUSY_CONDITION ;
 int LAPB_POLLOFF ;
 unsigned short LAPB_SMODULUS ;
 int lapb_send_iframe (struct lapb_cb*,struct sk_buff*,int ) ;
 int lapb_start_t1timer (struct lapb_cb*) ;
 int lapb_t1timer_running (struct lapb_cb*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_peek (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_set_owner_w (struct sk_buff*,scalar_t__) ;

void lapb_kick(struct lapb_cb *lapb)
{
 struct sk_buff *skb, *skbn;
 unsigned short modulus, start, end;

 modulus = (lapb->mode & LAPB_EXTENDED) ? LAPB_EMODULUS : LAPB_SMODULUS;
 start = !skb_peek(&lapb->ack_queue) ? lapb->va : lapb->vs;
 end = (lapb->va + lapb->window) % modulus;

 if (!(lapb->condition & LAPB_PEER_RX_BUSY_CONDITION) &&
     start != end && skb_peek(&lapb->write_queue)) {
  lapb->vs = start;




  skb = skb_dequeue(&lapb->write_queue);

  do {
   if ((skbn = skb_clone(skb, GFP_ATOMIC)) == ((void*)0)) {
    skb_queue_head(&lapb->write_queue, skb);
    break;
   }

   if (skb->sk)
    skb_set_owner_w(skbn, skb->sk);




   lapb_send_iframe(lapb, skbn, LAPB_POLLOFF);

   lapb->vs = (lapb->vs + 1) % modulus;




   skb_queue_tail(&lapb->ack_queue, skb);

  } while (lapb->vs != end && (skb = skb_dequeue(&lapb->write_queue)) != ((void*)0));

  lapb->condition &= ~LAPB_ACK_PENDING_CONDITION;

  if (!lapb_t1timer_running(lapb))
   lapb_start_t1timer(lapb);
 }
}
