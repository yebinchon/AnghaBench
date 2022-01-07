
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct Qdisc {int skb_bad_txq; } ;


 struct sk_buff* __skb_dequeue_bad_txq (struct Qdisc*) ;
 struct sk_buff* skb_peek (int *) ;
 scalar_t__ unlikely (struct sk_buff*) ;

__attribute__((used)) static inline struct sk_buff *qdisc_dequeue_skb_bad_txq(struct Qdisc *q)
{
 struct sk_buff *skb = skb_peek(&q->skb_bad_txq);

 if (unlikely(skb))
  skb = __skb_dequeue_bad_txq(q);

 return skb;
}
