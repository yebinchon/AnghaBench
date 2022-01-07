
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct lapb_cb {int mode; unsigned short va; int ack_queue; } ;


 int LAPB_EMODULUS ;
 int LAPB_EXTENDED ;
 int LAPB_SMODULUS ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_peek (int *) ;

void lapb_frames_acked(struct lapb_cb *lapb, unsigned short nr)
{
 struct sk_buff *skb;
 int modulus;

 modulus = (lapb->mode & LAPB_EXTENDED) ? LAPB_EMODULUS : LAPB_SMODULUS;




 if (lapb->va != nr)
  while (skb_peek(&lapb->ack_queue) && lapb->va != nr) {
   skb = skb_dequeue(&lapb->ack_queue);
   kfree_skb(skb);
   lapb->va = (lapb->va + 1) % modulus;
  }
}
