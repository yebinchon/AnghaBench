
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_array {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pfifo_fast_priv {int dummy; } ;
struct Qdisc {int empty; } ;


 int PFIFO_FAST_BANDS ;
 struct sk_buff* __skb_array_consume (struct skb_array*) ;
 scalar_t__ __skb_array_empty (struct skb_array*) ;
 struct skb_array* band2list (struct pfifo_fast_priv*,int) ;
 scalar_t__ likely (struct sk_buff*) ;
 struct pfifo_fast_priv* qdisc_priv (struct Qdisc*) ;
 int qdisc_update_stats_at_dequeue (struct Qdisc*,struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *pfifo_fast_dequeue(struct Qdisc *qdisc)
{
 struct pfifo_fast_priv *priv = qdisc_priv(qdisc);
 struct sk_buff *skb = ((void*)0);
 int band;

 for (band = 0; band < PFIFO_FAST_BANDS && !skb; band++) {
  struct skb_array *q = band2list(priv, band);

  if (__skb_array_empty(q))
   continue;

  skb = __skb_array_consume(q);
 }
 if (likely(skb)) {
  qdisc_update_stats_at_dequeue(qdisc, skb);
 } else {
  qdisc->empty = 1;
 }

 return skb;
}
