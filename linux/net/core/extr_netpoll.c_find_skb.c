
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int users; } ;
struct netpoll {int dev; } ;


 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int netpoll_poll_dev (int ) ;
 int refcount_set (int *,int) ;
 int refill_skbs () ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_pool ;
 int skb_reserve (struct sk_buff*,int) ;
 int zap_completion_queue () ;

__attribute__((used)) static struct sk_buff *find_skb(struct netpoll *np, int len, int reserve)
{
 int count = 0;
 struct sk_buff *skb;

 zap_completion_queue();
 refill_skbs();
repeat:

 skb = alloc_skb(len, GFP_ATOMIC);
 if (!skb)
  skb = skb_dequeue(&skb_pool);

 if (!skb) {
  if (++count < 10) {
   netpoll_poll_dev(np->dev);
   goto repeat;
  }
  return ((void*)0);
 }

 refcount_set(&skb->users, 1);
 skb_reserve(skb, reserve);
 return skb;
}
