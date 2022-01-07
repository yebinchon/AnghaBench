
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct Qdisc {int flags; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;
struct TYPE_2__ {int (* ndo_setup_tc ) (struct net_device*,int,void*) ;} ;


 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int TCQ_F_OFFLOADED ;
 struct Qdisc noop_qdisc ;
 int stub1 (struct net_device*,int,void*) ;
 int tc_can_offload (struct net_device*) ;

void qdisc_offload_graft_helper(struct net_device *dev, struct Qdisc *sch,
    struct Qdisc *new, struct Qdisc *old,
    enum tc_setup_type type, void *type_data,
    struct netlink_ext_ack *extack)
{
 bool any_qdisc_is_offloaded;
 int err;

 if (!tc_can_offload(dev) || !dev->netdev_ops->ndo_setup_tc)
  return;

 err = dev->netdev_ops->ndo_setup_tc(dev, type, type_data);


 if (!err || !new || new == &noop_qdisc)
  return;




 any_qdisc_is_offloaded = new->flags & TCQ_F_OFFLOADED;
 any_qdisc_is_offloaded |= sch && sch->flags & TCQ_F_OFFLOADED;
 any_qdisc_is_offloaded |= old && old->flags & TCQ_F_OFFLOADED;

 if (any_qdisc_is_offloaded)
  NL_SET_ERR_MSG(extack, "Offloading graft operation failed.");
}
