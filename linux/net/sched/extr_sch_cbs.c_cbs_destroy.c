
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cbs_sched_data {int qdisc; int cbs_list; int watchdog; } ;
struct Qdisc {int dummy; } ;


 int cbs_disable_offload (struct net_device*,struct cbs_sched_data*) ;
 int cbs_list_lock ;
 int list_del (int *) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct cbs_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (int ) ;
 int qdisc_watchdog_cancel (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cbs_destroy(struct Qdisc *sch)
{
 struct cbs_sched_data *q = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);


 if (!q->qdisc)
  return;

 qdisc_watchdog_cancel(&q->watchdog);
 cbs_disable_offload(dev, q);

 spin_lock(&cbs_list_lock);
 list_del(&q->cbs_list);
 spin_unlock(&cbs_list_lock);

 qdisc_put(q->qdisc);
}
