
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* netdev_ops; } ;
struct Qdisc {int flags; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;
struct TYPE_2__ {int (* ndo_setup_tc ) (struct net_device*,int,void*) ;} ;


 int EOPNOTSUPP ;
 int TCQ_F_OFFLOADED ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 int stub1 (struct net_device*,int,void*) ;
 int tc_can_offload (struct net_device*) ;

int qdisc_offload_dump_helper(struct Qdisc *sch, enum tc_setup_type type,
         void *type_data)
{
 struct net_device *dev = qdisc_dev(sch);
 int err;

 sch->flags &= ~TCQ_F_OFFLOADED;
 if (!tc_can_offload(dev) || !dev->netdev_ops->ndo_setup_tc)
  return 0;

 err = dev->netdev_ops->ndo_setup_tc(dev, type, type_data);
 if (err == -EOPNOTSUPP)
  return 0;

 if (!err)
  sch->flags |= TCQ_F_OFFLOADED;

 return err;
}
