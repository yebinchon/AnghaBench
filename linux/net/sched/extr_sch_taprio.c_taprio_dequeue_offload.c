
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct taprio_sched {struct Qdisc** qdiscs; } ;
struct sk_buff {int dummy; } ;
struct net_device {int num_tx_queues; } ;
struct TYPE_4__ {int qlen; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__* ops; } ;
struct TYPE_3__ {struct sk_buff* (* dequeue ) (struct Qdisc*) ;} ;


 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct taprio_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 struct sk_buff* stub1 (struct Qdisc*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *taprio_dequeue_offload(struct Qdisc *sch)
{
 struct taprio_sched *q = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);
 struct sk_buff *skb;
 int i;

 for (i = 0; i < dev->num_tx_queues; i++) {
  struct Qdisc *child = q->qdiscs[i];

  if (unlikely(!child))
   continue;

  skb = child->ops->dequeue(child);
  if (unlikely(!skb))
   continue;

  qdisc_bstats_update(sch, skb);
  qdisc_qstats_backlog_dec(sch, skb);
  sch->q.qlen--;

  return skb;
 }

 return ((void*)0);
}
