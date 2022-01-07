
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
struct tc_mqprio_qopt_offload {TYPE_1__ member_0; } ;
struct net_device {unsigned int num_tx_queues; TYPE_2__* netdev_ops; } ;
struct mqprio_sched {int mode; scalar_t__ hw_offload; scalar_t__* qdiscs; } ;
struct Qdisc {int dummy; } ;
struct TYPE_4__ {int (* ndo_setup_tc ) (struct net_device*,int ,struct tc_mqprio_qopt_offload*) ;} ;




 int TC_SETUP_QDISC_MQPRIO ;
 int kfree (scalar_t__*) ;
 int netdev_set_num_tc (struct net_device*,int ) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct mqprio_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (scalar_t__) ;
 int stub1 (struct net_device*,int ,struct tc_mqprio_qopt_offload*) ;

__attribute__((used)) static void mqprio_destroy(struct Qdisc *sch)
{
 struct net_device *dev = qdisc_dev(sch);
 struct mqprio_sched *priv = qdisc_priv(sch);
 unsigned int ntx;

 if (priv->qdiscs) {
  for (ntx = 0;
       ntx < dev->num_tx_queues && priv->qdiscs[ntx];
       ntx++)
   qdisc_put(priv->qdiscs[ntx]);
  kfree(priv->qdiscs);
 }

 if (priv->hw_offload && dev->netdev_ops->ndo_setup_tc) {
  struct tc_mqprio_qopt_offload mqprio = { { 0 } };

  switch (priv->mode) {
  case 128:
  case 129:
   dev->netdev_ops->ndo_setup_tc(dev,
            TC_SETUP_QDISC_MQPRIO,
            &mqprio);
   break;
  default:
   return;
  }
 } else {
  netdev_set_num_tc(dev, 0);
 }
}
