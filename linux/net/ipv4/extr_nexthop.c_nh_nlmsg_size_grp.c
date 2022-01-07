
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nh_group {int num_nh; } ;
struct nexthop_grp {int dummy; } ;
struct nexthop {int nh_grp; } ;


 size_t nla_total_size (int) ;
 struct nh_group* rtnl_dereference (int ) ;

__attribute__((used)) static size_t nh_nlmsg_size_grp(struct nexthop *nh)
{
 struct nh_group *nhg = rtnl_dereference(nh->nh_grp);
 size_t sz = sizeof(struct nexthop_grp) * nhg->num_nh;

 return nla_total_size(sz) +
        nla_total_size(2);
}
