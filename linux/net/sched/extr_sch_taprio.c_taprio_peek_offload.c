
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct taprio_sched {struct Qdisc** qdiscs; } ;
struct sk_buff {int dummy; } ;
struct net_device {int num_tx_queues; } ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct sk_buff* (* peek ) (struct Qdisc*) ;} ;


 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct taprio_sched* qdisc_priv (struct Qdisc*) ;
 struct sk_buff* stub1 (struct Qdisc*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *taprio_peek_offload(struct Qdisc *sch)
{
 struct taprio_sched *q = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);
 struct sk_buff *skb;
 int i;

 for (i = 0; i < dev->num_tx_queues; i++) {
  struct Qdisc *child = q->qdiscs[i];

  if (unlikely(!child))
   continue;

  skb = child->ops->peek(child);
  if (!skb)
   continue;

  return skb;
 }

 return ((void*)0);
}
