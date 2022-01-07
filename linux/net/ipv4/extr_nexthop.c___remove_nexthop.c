
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nl_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ nhc_dev; } ;
struct nh_info {int dev_hash; TYPE_1__ fib_nhc; } ;
struct nexthop {int nh_info; scalar_t__ is_group; } ;
struct net {int dummy; } ;


 int __remove_nexthop_fib (struct net*,struct nexthop*) ;
 int hlist_del (int *) ;
 int remove_nexthop_from_groups (struct net*,struct nexthop*,struct nl_info*) ;
 int remove_nexthop_group (struct nexthop*,struct nl_info*) ;
 struct nh_info* rtnl_dereference (int ) ;

__attribute__((used)) static void __remove_nexthop(struct net *net, struct nexthop *nh,
        struct nl_info *nlinfo)
{
 __remove_nexthop_fib(net, nh);

 if (nh->is_group) {
  remove_nexthop_group(nh, nlinfo);
 } else {
  struct nh_info *nhi;

  nhi = rtnl_dereference(nh->nh_info);
  if (nhi->fib_nhc.nhc_dev)
   hlist_del(&nhi->dev_hash);

  remove_nexthop_from_groups(net, nh, nlinfo);
 }
}
