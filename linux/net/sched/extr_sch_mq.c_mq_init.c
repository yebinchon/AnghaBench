
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {unsigned int num_tx_queues; } ;
struct mq_sched {struct Qdisc** qdiscs; } ;
struct Qdisc {scalar_t__ parent; int flags; int handle; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int TCQ_F_MQROOT ;
 int TCQ_F_NOPARENT ;
 int TCQ_F_ONETXQUEUE ;
 int TC_H_MAJ (int ) ;
 int TC_H_MAKE (int ,int ) ;
 int TC_H_MIN (unsigned int) ;
 scalar_t__ TC_H_ROOT ;
 int TC_MQ_CREATE ;
 int get_default_qdisc_ops (struct net_device*,unsigned int) ;
 struct Qdisc** kcalloc (unsigned int,int,int ) ;
 int mq_offload (struct Qdisc*,int ) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,unsigned int) ;
 int netif_is_multiqueue (struct net_device*) ;
 struct Qdisc* qdisc_create_dflt (struct netdev_queue*,int ,int ,struct netlink_ext_ack*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct mq_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int mq_init(struct Qdisc *sch, struct nlattr *opt,
     struct netlink_ext_ack *extack)
{
 struct net_device *dev = qdisc_dev(sch);
 struct mq_sched *priv = qdisc_priv(sch);
 struct netdev_queue *dev_queue;
 struct Qdisc *qdisc;
 unsigned int ntx;

 if (sch->parent != TC_H_ROOT)
  return -EOPNOTSUPP;

 if (!netif_is_multiqueue(dev))
  return -EOPNOTSUPP;


 priv->qdiscs = kcalloc(dev->num_tx_queues, sizeof(priv->qdiscs[0]),
          GFP_KERNEL);
 if (!priv->qdiscs)
  return -ENOMEM;

 for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
  dev_queue = netdev_get_tx_queue(dev, ntx);
  qdisc = qdisc_create_dflt(dev_queue, get_default_qdisc_ops(dev, ntx),
       TC_H_MAKE(TC_H_MAJ(sch->handle),
          TC_H_MIN(ntx + 1)),
       extack);
  if (!qdisc)
   return -ENOMEM;
  priv->qdiscs[ntx] = qdisc;
  qdisc->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
 }

 sch->flags |= TCQ_F_MQROOT;

 mq_offload(sch, TC_MQ_CREATE);
 return 0;
}
