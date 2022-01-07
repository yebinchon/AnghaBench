
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_mq_qopt_offload {int command; int handle; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct Qdisc {int handle; } ;
typedef enum tc_mq_command { ____Placeholder_tc_mq_command } tc_mq_command ;
struct TYPE_2__ {int (* ndo_setup_tc ) (struct net_device*,int ,struct tc_mq_qopt_offload*) ;} ;


 int EOPNOTSUPP ;
 int TC_SETUP_QDISC_MQ ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 int stub1 (struct net_device*,int ,struct tc_mq_qopt_offload*) ;
 int tc_can_offload (struct net_device*) ;

__attribute__((used)) static int mq_offload(struct Qdisc *sch, enum tc_mq_command cmd)
{
 struct net_device *dev = qdisc_dev(sch);
 struct tc_mq_qopt_offload opt = {
  .command = cmd,
  .handle = sch->handle,
 };

 if (!tc_can_offload(dev) || !dev->netdev_ops->ndo_setup_tc)
  return -EOPNOTSUPP;

 return dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_QDISC_MQ, &opt);
}
