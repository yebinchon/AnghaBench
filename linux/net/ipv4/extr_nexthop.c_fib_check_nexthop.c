
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nh_group {TYPE_1__* nh_entries; } ;
struct nexthop {int nh_grp; scalar_t__ is_group; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {struct nexthop* nh; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int RT_SCOPE_HOST ;
 int nexthop_check_scope (struct nexthop*,int ,struct netlink_ext_ack*) ;
 struct nh_group* rtnl_dereference (int ) ;

int fib_check_nexthop(struct nexthop *nh, u8 scope,
        struct netlink_ext_ack *extack)
{
 int err = 0;

 if (nh->is_group) {
  struct nh_group *nhg;

  if (scope == RT_SCOPE_HOST) {
   NL_SET_ERR_MSG(extack, "Route with host scope can not have multiple nexthops");
   err = -EINVAL;
   goto out;
  }

  nhg = rtnl_dereference(nh->nh_grp);

  err = nexthop_check_scope(nhg->nh_entries[0].nh, scope, extack);
 } else {
  err = nexthop_check_scope(nh, scope, extack);
 }
out:
 return err;
}
