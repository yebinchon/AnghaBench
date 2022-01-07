
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int end; } ;
struct codel_vars {int dummy; } ;
struct TYPE_2__ {int backlog; } ;
struct Qdisc {TYPE_1__ qstats; int q; } ;


 struct sk_buff* __qdisc_dequeue_head (int *) ;
 int prefetch (int *) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *dequeue_func(struct codel_vars *vars, void *ctx)
{
 struct Qdisc *sch = ctx;
 struct sk_buff *skb = __qdisc_dequeue_head(&sch->q);

 if (skb) {
  sch->qstats.backlog -= qdisc_pkt_len(skb);
  prefetch(&skb->end);
 }
 return skb;
}
