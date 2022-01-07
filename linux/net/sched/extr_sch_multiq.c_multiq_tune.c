
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tc_multiq_qopt {int bands; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct multiq_sched_data {int max_bands; int bands; struct Qdisc** queues; } ;
struct Qdisc {int handle; int dev_queue; } ;
struct TYPE_3__ {int real_num_tx_queues; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int TC_H_MAKE (int ,int) ;
 int kfree (struct Qdisc**) ;
 struct Qdisc** kmalloc (int,int ) ;
 int netif_is_multiqueue (TYPE_1__*) ;
 struct tc_multiq_qopt* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct Qdisc noop_qdisc ;
 int pfifo_qdisc_ops ;
 struct Qdisc* qdisc_create_dflt (int ,int *,int ,struct netlink_ext_ack*) ;
 TYPE_1__* qdisc_dev (struct Qdisc*) ;
 int qdisc_hash_add (struct Qdisc*,int) ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_purge_queue (struct Qdisc*) ;
 int qdisc_put (struct Qdisc*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int multiq_tune(struct Qdisc *sch, struct nlattr *opt,
         struct netlink_ext_ack *extack)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 struct tc_multiq_qopt *qopt;
 struct Qdisc **removed;
 int i, n_removed = 0;

 if (!netif_is_multiqueue(qdisc_dev(sch)))
  return -EOPNOTSUPP;
 if (nla_len(opt) < sizeof(*qopt))
  return -EINVAL;

 qopt = nla_data(opt);

 qopt->bands = qdisc_dev(sch)->real_num_tx_queues;

 removed = kmalloc(sizeof(*removed) * (q->max_bands - q->bands),
     GFP_KERNEL);
 if (!removed)
  return -ENOMEM;

 sch_tree_lock(sch);
 q->bands = qopt->bands;
 for (i = q->bands; i < q->max_bands; i++) {
  if (q->queues[i] != &noop_qdisc) {
   struct Qdisc *child = q->queues[i];

   q->queues[i] = &noop_qdisc;
   qdisc_purge_queue(child);
   removed[n_removed++] = child;
  }
 }

 sch_tree_unlock(sch);

 for (i = 0; i < n_removed; i++)
  qdisc_put(removed[i]);
 kfree(removed);

 for (i = 0; i < q->bands; i++) {
  if (q->queues[i] == &noop_qdisc) {
   struct Qdisc *child, *old;
   child = qdisc_create_dflt(sch->dev_queue,
        &pfifo_qdisc_ops,
        TC_H_MAKE(sch->handle,
           i + 1), extack);
   if (child) {
    sch_tree_lock(sch);
    old = q->queues[i];
    q->queues[i] = child;
    if (child != &noop_qdisc)
     qdisc_hash_add(child, 1);

    if (old != &noop_qdisc)
     qdisc_purge_queue(old);
    sch_tree_unlock(sch);
    qdisc_put(old);
   }
  }
 }
 return 0;
}
