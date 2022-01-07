
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {scalar_t__ limit; TYPE_1__ q; } ;


 scalar_t__ likely (int) ;
 int qdisc_drop (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 int qdisc_enqueue_tail (struct sk_buff*,struct Qdisc*) ;

__attribute__((used)) static int pfifo_enqueue(struct sk_buff *skb, struct Qdisc *sch,
    struct sk_buff **to_free)
{
 if (likely(sch->q.qlen < sch->limit))
  return qdisc_enqueue_tail(skb, sch);

 return qdisc_drop(skb, sch, to_free);
}
