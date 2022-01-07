
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct net_device {int priv_flags; struct Qdisc* qdisc; } ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* attach ) (struct Qdisc*) ;} ;


 int IFF_NO_QUEUE ;
 int TC_H_ROOT ;
 int attach_one_default_qdisc ;
 int mq_qdisc_ops ;
 int netdev_for_each_tx_queue (struct net_device*,int ,int *) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 int netif_is_multiqueue (struct net_device*) ;
 struct Qdisc noop_qdisc ;
 struct Qdisc* qdisc_create_dflt (struct netdev_queue*,int *,int ,int *) ;
 int qdisc_hash_add (struct Qdisc*,int) ;
 int qdisc_refcount_inc (struct Qdisc*) ;
 int stub1 (struct Qdisc*) ;

__attribute__((used)) static void attach_default_qdiscs(struct net_device *dev)
{
 struct netdev_queue *txq;
 struct Qdisc *qdisc;

 txq = netdev_get_tx_queue(dev, 0);

 if (!netif_is_multiqueue(dev) ||
     dev->priv_flags & IFF_NO_QUEUE) {
  netdev_for_each_tx_queue(dev, attach_one_default_qdisc, ((void*)0));
  dev->qdisc = txq->qdisc_sleeping;
  qdisc_refcount_inc(dev->qdisc);
 } else {
  qdisc = qdisc_create_dflt(txq, &mq_qdisc_ops, TC_H_ROOT, ((void*)0));
  if (qdisc) {
   dev->qdisc = qdisc;
   qdisc->ops->attach(qdisc);
  }
 }




}
