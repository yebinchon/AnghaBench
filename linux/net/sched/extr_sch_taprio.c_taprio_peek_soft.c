
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct taprio_sched {int flags; struct Qdisc** qdiscs; int current_entry; } ;
struct sk_buff {int priority; } ;
struct sched_entry {int gate_mask; } ;
struct net_device {int num_tx_queues; } ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct sk_buff* (* peek ) (struct Qdisc*) ;} ;


 int BIT (int ) ;
 int TAPRIO_ALL_GATES_OPEN ;
 scalar_t__ TXTIME_ASSIST_IS_ENABLED (int ) ;
 int netdev_get_prio_tc_map (struct net_device*,int) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct taprio_sched* qdisc_priv (struct Qdisc*) ;
 struct sched_entry* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_buff* stub1 (struct Qdisc*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *taprio_peek_soft(struct Qdisc *sch)
{
 struct taprio_sched *q = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);
 struct sched_entry *entry;
 struct sk_buff *skb;
 u32 gate_mask;
 int i;

 rcu_read_lock();
 entry = rcu_dereference(q->current_entry);
 gate_mask = entry ? entry->gate_mask : TAPRIO_ALL_GATES_OPEN;
 rcu_read_unlock();

 if (!gate_mask)
  return ((void*)0);

 for (i = 0; i < dev->num_tx_queues; i++) {
  struct Qdisc *child = q->qdiscs[i];
  int prio;
  u8 tc;

  if (unlikely(!child))
   continue;

  skb = child->ops->peek(child);
  if (!skb)
   continue;

  if (TXTIME_ASSIST_IS_ENABLED(q->flags))
   return skb;

  prio = skb->priority;
  tc = netdev_get_prio_tc_map(dev, prio);

  if (!(gate_mask & BIT(tc)))
   continue;

  return skb;
 }

 return ((void*)0);
}
