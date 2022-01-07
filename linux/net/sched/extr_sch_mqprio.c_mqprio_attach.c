
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int num_tx_queues; unsigned int real_num_tx_queues; } ;
struct mqprio_sched {struct Qdisc** qdiscs; } ;
struct Qdisc {int dev_queue; } ;


 struct Qdisc* dev_graft_qdisc (int ,struct Qdisc*) ;
 int kfree (struct Qdisc**) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 int qdisc_hash_add (struct Qdisc*,int) ;
 struct mqprio_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (struct Qdisc*) ;

__attribute__((used)) static void mqprio_attach(struct Qdisc *sch)
{
 struct net_device *dev = qdisc_dev(sch);
 struct mqprio_sched *priv = qdisc_priv(sch);
 struct Qdisc *qdisc, *old;
 unsigned int ntx;


 for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
  qdisc = priv->qdiscs[ntx];
  old = dev_graft_qdisc(qdisc->dev_queue, qdisc);
  if (old)
   qdisc_put(old);
  if (ntx < dev->real_num_tx_queues)
   qdisc_hash_add(qdisc, 0);
 }
 kfree(priv->qdiscs);
 priv->qdiscs = ((void*)0);
}
