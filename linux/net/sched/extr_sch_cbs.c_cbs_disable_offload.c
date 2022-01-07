
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cbs_qopt_offload {int queue; scalar_t__ enable; } ;
struct net_device_ops {int (* ndo_setup_tc ) (struct net_device*,int ,struct tc_cbs_qopt_offload*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;
struct cbs_sched_data {int queue; int dequeue; int enqueue; int offload; } ;


 int TC_SETUP_QDISC_CBS ;
 int cbs_dequeue_soft ;
 int cbs_enqueue_soft ;
 int pr_warn (char*,int ) ;
 int stub1 (struct net_device*,int ,struct tc_cbs_qopt_offload*) ;

__attribute__((used)) static void cbs_disable_offload(struct net_device *dev,
    struct cbs_sched_data *q)
{
 struct tc_cbs_qopt_offload cbs = { };
 const struct net_device_ops *ops;
 int err;

 if (!q->offload)
  return;

 q->enqueue = cbs_enqueue_soft;
 q->dequeue = cbs_dequeue_soft;

 ops = dev->netdev_ops;
 if (!ops->ndo_setup_tc)
  return;

 cbs.queue = q->queue;
 cbs.enable = 0;

 err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_CBS, &cbs);
 if (err < 0)
  pr_warn("Couldn't disable CBS offload for queue %d\n",
   cbs.queue);
}
