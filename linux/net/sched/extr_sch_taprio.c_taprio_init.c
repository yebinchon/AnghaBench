
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct taprio_sched {int clockid; struct Qdisc** qdiscs; int taprio_list; struct Qdisc* root; int peek; int dequeue; TYPE_1__ advance_timer; int current_entry_lock; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int num_tx_queues; int real_num_tx_queues; } ;
struct Qdisc {scalar_t__ parent; int handle; } ;


 int CLOCK_TAI ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_ABS ;
 int TC_H_MAJ (int ) ;
 int TC_H_MAKE (int ,int ) ;
 int TC_H_MIN (int) ;
 scalar_t__ TC_H_ROOT ;
 int advance_sched ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 struct Qdisc** kcalloc (int,int,int ) ;
 int list_add (int *,int *) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int) ;
 int netif_is_multiqueue (struct net_device*) ;
 int pfifo_qdisc_ops ;
 struct Qdisc* qdisc_create_dflt (struct netdev_queue*,int *,int ,struct netlink_ext_ack*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 int qdisc_hash_add (struct Qdisc*,int) ;
 struct taprio_sched* qdisc_priv (struct Qdisc*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int taprio_change (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;
 int taprio_dequeue_soft ;
 int taprio_list ;
 int taprio_list_lock ;
 int taprio_peek_soft ;

__attribute__((used)) static int taprio_init(struct Qdisc *sch, struct nlattr *opt,
         struct netlink_ext_ack *extack)
{
 struct taprio_sched *q = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);
 int i;

 spin_lock_init(&q->current_entry_lock);

 hrtimer_init(&q->advance_timer, CLOCK_TAI, HRTIMER_MODE_ABS);
 q->advance_timer.function = advance_sched;

 q->dequeue = taprio_dequeue_soft;
 q->peek = taprio_peek_soft;

 q->root = sch;




 q->clockid = -1;

 spin_lock(&taprio_list_lock);
 list_add(&q->taprio_list, &taprio_list);
 spin_unlock(&taprio_list_lock);

 if (sch->parent != TC_H_ROOT)
  return -EOPNOTSUPP;

 if (!netif_is_multiqueue(dev))
  return -EOPNOTSUPP;


 q->qdiscs = kcalloc(dev->num_tx_queues,
       sizeof(q->qdiscs[0]),
       GFP_KERNEL);

 if (!q->qdiscs)
  return -ENOMEM;

 if (!opt)
  return -EINVAL;

 for (i = 0; i < dev->num_tx_queues; i++) {
  struct netdev_queue *dev_queue;
  struct Qdisc *qdisc;

  dev_queue = netdev_get_tx_queue(dev, i);
  qdisc = qdisc_create_dflt(dev_queue,
       &pfifo_qdisc_ops,
       TC_H_MAKE(TC_H_MAJ(sch->handle),
          TC_H_MIN(i + 1)),
       extack);
  if (!qdisc)
   return -ENOMEM;

  if (i < dev->real_num_tx_queues)
   qdisc_hash_add(qdisc, 0);

  q->qdiscs[i] = qdisc;
 }

 return taprio_change(sch, opt, extack);
}
