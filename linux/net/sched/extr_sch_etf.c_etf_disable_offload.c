
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_etf_qopt_offload {int queue; scalar_t__ enable; } ;
struct net_device_ops {int (* ndo_setup_tc ) (struct net_device*,int ,struct tc_etf_qopt_offload*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;
struct etf_sched_data {int queue; int offload; } ;


 int TC_SETUP_QDISC_ETF ;
 int pr_warn (char*,int ) ;
 int stub1 (struct net_device*,int ,struct tc_etf_qopt_offload*) ;

__attribute__((used)) static void etf_disable_offload(struct net_device *dev,
    struct etf_sched_data *q)
{
 struct tc_etf_qopt_offload etf = { };
 const struct net_device_ops *ops;
 int err;

 if (!q->offload)
  return;

 ops = dev->netdev_ops;
 if (!ops->ndo_setup_tc)
  return;

 etf.queue = q->queue;
 etf.enable = 0;

 err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_ETF, &etf);
 if (err < 0)
  pr_warn("Couldn't disable ETF offload for queue %d\n",
   etf.queue);
}
