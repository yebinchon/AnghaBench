
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rose_neigh {int dummy; } ;


 int GFP_ATOMIC ;
 scalar_t__ ROSE_LOOPBACK_LIMIT ;
 int consume_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int loopback_queue ;
 int rose_loopback_running () ;
 int rose_set_loopback_timer () ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

int rose_loopback_queue(struct sk_buff *skb, struct rose_neigh *neigh)
{
 struct sk_buff *skbn = ((void*)0);

 if (skb_queue_len(&loopback_queue) < ROSE_LOOPBACK_LIMIT)
  skbn = skb_clone(skb, GFP_ATOMIC);

 if (skbn) {
  consume_skb(skb);
  skb_queue_tail(&loopback_queue, skbn);

  if (!rose_loopback_running())
   rose_set_loopback_timer();
 } else {
  kfree_skb(skb);
 }

 return 1;
}
