
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct cbs_sched_data {int watchdog; int dequeue; int enqueue; scalar_t__ queue; int qdisc; int cbs_list; } ;
struct Qdisc {scalar_t__ dev_queue; int handle; } ;


 int EINVAL ;
 int ENOMEM ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int cbs_change (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;
 int cbs_dequeue_soft ;
 int cbs_enqueue_soft ;
 int cbs_list ;
 int cbs_list_lock ;
 int list_add (int *,int *) ;
 scalar_t__ netdev_get_tx_queue (struct net_device*,int ) ;
 int pfifo_qdisc_ops ;
 int qdisc_create_dflt (scalar_t__,int *,int ,struct netlink_ext_ack*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 int qdisc_hash_add (int ,int) ;
 struct cbs_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_init (int *,struct Qdisc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cbs_init(struct Qdisc *sch, struct nlattr *opt,
      struct netlink_ext_ack *extack)
{
 struct cbs_sched_data *q = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);

 if (!opt) {
  NL_SET_ERR_MSG(extack, "Missing CBS qdisc options  which are mandatory");
  return -EINVAL;
 }

 q->qdisc = qdisc_create_dflt(sch->dev_queue, &pfifo_qdisc_ops,
         sch->handle, extack);
 if (!q->qdisc)
  return -ENOMEM;

 spin_lock(&cbs_list_lock);
 list_add(&q->cbs_list, &cbs_list);
 spin_unlock(&cbs_list_lock);

 qdisc_hash_add(q->qdisc, 0);

 q->queue = sch->dev_queue - netdev_get_tx_queue(dev, 0);

 q->enqueue = cbs_enqueue_soft;
 q->dequeue = cbs_dequeue_soft;

 qdisc_watchdog_init(&q->watchdog, sch);

 return cbs_change(sch, opt, extack);
}
