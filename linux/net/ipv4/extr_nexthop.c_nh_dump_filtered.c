
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {struct net_device* nhc_dev; } ;
struct nh_info {scalar_t__ family; TYPE_1__ fib_nhc; } ;
struct nexthop {int nh_info; scalar_t__ is_group; } ;
struct net_device {int ifindex; } ;


 struct net_device* netdev_master_upper_dev_get (struct net_device*) ;
 struct nh_info* rtnl_dereference (int ) ;

__attribute__((used)) static bool nh_dump_filtered(struct nexthop *nh, int dev_idx, int master_idx,
        bool group_filter, u8 family)
{
 const struct net_device *dev;
 const struct nh_info *nhi;

 if (group_filter && !nh->is_group)
  return 1;

 if (!dev_idx && !master_idx && !family)
  return 0;

 if (nh->is_group)
  return 1;

 nhi = rtnl_dereference(nh->nh_info);
 if (family && nhi->family != family)
  return 1;

 dev = nhi->fib_nhc.nhc_dev;
 if (dev_idx && (!dev || dev->ifindex != dev_idx))
  return 1;

 if (master_idx) {
  struct net_device *master;

  if (!dev)
   return 1;

  master = netdev_master_upper_dev_get((struct net_device *)dev);
  if (!master || master->ifindex != master_idx)
   return 1;
 }

 return 0;
}
