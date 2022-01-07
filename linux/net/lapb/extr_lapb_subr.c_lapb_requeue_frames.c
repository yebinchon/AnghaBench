
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct lapb_cb {int write_queue; int ack_queue; } ;


 int skb_append (struct sk_buff*,struct sk_buff*,int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;

void lapb_requeue_frames(struct lapb_cb *lapb)
{
 struct sk_buff *skb, *skb_prev = ((void*)0);






 while ((skb = skb_dequeue(&lapb->ack_queue)) != ((void*)0)) {
  if (!skb_prev)
   skb_queue_head(&lapb->write_queue, skb);
  else
   skb_append(skb_prev, skb, &lapb->write_queue);
  skb_prev = skb;
 }
}
