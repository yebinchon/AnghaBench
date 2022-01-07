
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct taprio_sched {TYPE_2__* admin_sched; TYPE_1__* oper_sched; scalar_t__* qdiscs; int advance_timer; int taprio_list; } ;
struct net_device {unsigned int num_tx_queues; } ;
struct Qdisc {int dummy; } ;
struct TYPE_4__ {int rcu; } ;
struct TYPE_3__ {int rcu; } ;


 int call_rcu (int *,int ) ;
 int hrtimer_cancel (int *) ;
 int kfree (scalar_t__*) ;
 int list_del (int *) ;
 int netdev_set_num_tc (struct net_device*,int ) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct taprio_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int taprio_disable_offload (struct net_device*,struct taprio_sched*,int *) ;
 int taprio_free_sched_cb ;
 int taprio_list_lock ;

__attribute__((used)) static void taprio_destroy(struct Qdisc *sch)
{
 struct taprio_sched *q = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);
 unsigned int i;

 spin_lock(&taprio_list_lock);
 list_del(&q->taprio_list);
 spin_unlock(&taprio_list_lock);

 hrtimer_cancel(&q->advance_timer);

 taprio_disable_offload(dev, q, ((void*)0));

 if (q->qdiscs) {
  for (i = 0; i < dev->num_tx_queues && q->qdiscs[i]; i++)
   qdisc_put(q->qdiscs[i]);

  kfree(q->qdiscs);
 }
 q->qdiscs = ((void*)0);

 netdev_set_num_tc(dev, 0);

 if (q->oper_sched)
  call_rcu(&q->oper_sched->rcu, taprio_free_sched_cb);

 if (q->admin_sched)
  call_rcu(&q->admin_sched->rcu, taprio_free_sched_cb);
}
