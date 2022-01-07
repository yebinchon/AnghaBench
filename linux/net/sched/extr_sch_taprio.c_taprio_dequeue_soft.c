
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct taprio_sched {int flags; struct Qdisc** qdiscs; int current_entry; } ;
struct sk_buff {int priority; } ;
struct sched_entry {int gate_mask; int budget; int close_time; } ;
struct net_device {int num_tx_queues; } ;
struct TYPE_4__ {int qlen; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__* ops; } ;
typedef int ktime_t ;
struct TYPE_3__ {struct sk_buff* (* dequeue ) (struct Qdisc*) ;struct sk_buff* (* peek ) (struct Qdisc*) ;} ;


 int BIT (int ) ;
 int TAPRIO_ALL_GATES_OPEN ;
 scalar_t__ TXTIME_ASSIST_IS_ENABLED (int ) ;
 scalar_t__ atomic_sub_return (int,int *) ;
 int ktime_add_ns (int ,int ) ;
 scalar_t__ ktime_after (int ,int ) ;
 int length_to_duration (struct taprio_sched*,int) ;
 int netdev_get_prio_tc_map (struct net_device*,int) ;
 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 int qdisc_pkt_len (struct sk_buff*) ;
 struct taprio_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 struct sched_entry* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_buff* stub1 (struct Qdisc*) ;
 struct sk_buff* stub2 (struct Qdisc*) ;
 struct sk_buff* stub3 (struct Qdisc*) ;
 int taprio_get_time (struct taprio_sched*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *taprio_dequeue_soft(struct Qdisc *sch)
{
 struct taprio_sched *q = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);
 struct sk_buff *skb = ((void*)0);
 struct sched_entry *entry;
 u32 gate_mask;
 int i;

 rcu_read_lock();
 entry = rcu_dereference(q->current_entry);





 gate_mask = entry ? entry->gate_mask : TAPRIO_ALL_GATES_OPEN;

 if (!gate_mask)
  goto done;

 for (i = 0; i < dev->num_tx_queues; i++) {
  struct Qdisc *child = q->qdiscs[i];
  ktime_t guard;
  int prio;
  int len;
  u8 tc;

  if (unlikely(!child))
   continue;

  if (TXTIME_ASSIST_IS_ENABLED(q->flags)) {
   skb = child->ops->dequeue(child);
   if (!skb)
    continue;
   goto skb_found;
  }

  skb = child->ops->peek(child);
  if (!skb)
   continue;

  prio = skb->priority;
  tc = netdev_get_prio_tc_map(dev, prio);

  if (!(gate_mask & BIT(tc)))
   continue;

  len = qdisc_pkt_len(skb);
  guard = ktime_add_ns(taprio_get_time(q),
         length_to_duration(q, len));




  if (gate_mask != TAPRIO_ALL_GATES_OPEN &&
      ktime_after(guard, entry->close_time))
   continue;


  if (gate_mask != TAPRIO_ALL_GATES_OPEN &&
      atomic_sub_return(len, &entry->budget) < 0)
   continue;

  skb = child->ops->dequeue(child);
  if (unlikely(!skb))
   goto done;

skb_found:
  qdisc_bstats_update(sch, skb);
  qdisc_qstats_backlog_dec(sch, skb);
  sch->q.qlen--;

  goto done;
 }

done:
 rcu_read_unlock();

 return skb;
}
