
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; struct sk_buff* next; } ;
struct netdev_queue {int dummy; } ;
struct Qdisc {struct sk_buff* (* dequeue ) (struct Qdisc*) ;} ;


 int qdisc_avail_bulklimit (struct netdev_queue const*) ;
 int skb_mark_not_on_list (struct sk_buff*) ;
 struct sk_buff* stub1 (struct Qdisc*) ;

__attribute__((used)) static void try_bulk_dequeue_skb(struct Qdisc *q,
     struct sk_buff *skb,
     const struct netdev_queue *txq,
     int *packets)
{
 int bytelimit = qdisc_avail_bulklimit(txq) - skb->len;

 while (bytelimit > 0) {
  struct sk_buff *nskb = q->dequeue(q);

  if (!nskb)
   break;

  bytelimit -= nskb->len;
  skb->next = nskb;
  skb = nskb;
  (*packets)++;
 }
 skb_mark_not_on_list(skb);
}
