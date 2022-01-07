
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nh_info {scalar_t__ reject_nh; } ;
struct nh_group {scalar_t__ mpath; } ;
struct nexthop {int nh_info; int nh_grp; scalar_t__ is_group; } ;
struct netlink_ext_ack {int dummy; } ;


 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 void* rtnl_dereference (int ) ;

__attribute__((used)) static bool valid_group_nh(struct nexthop *nh, unsigned int npaths,
      struct netlink_ext_ack *extack)
{
 if (nh->is_group) {
  struct nh_group *nhg = rtnl_dereference(nh->nh_grp);




  if (nhg->mpath) {
   NL_SET_ERR_MSG(extack,
           "Multipath group can not be a nexthop within a group");
   return 0;
  }
 } else {
  struct nh_info *nhi = rtnl_dereference(nh->nh_info);

  if (nhi->reject_nh && npaths > 1) {
   NL_SET_ERR_MSG(extack,
           "Blackhole nexthop can not be used in a group with more than 1 path");
   return 0;
  }
 }

 return 1;
}
