
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_info {int dummy; } ;
struct nh_grp_entry {int * nh; int nh_list; } ;
struct nh_group {int num_nh; struct nh_grp_entry* nh_entries; } ;
struct nexthop {int nh_grp; } ;


 scalar_t__ WARN_ON (int) ;
 int list_del (int *) ;
 int nexthop_put (int *) ;
 struct nh_group* rcu_dereference_rtnl (int ) ;

__attribute__((used)) static void remove_nexthop_group(struct nexthop *nh, struct nl_info *nlinfo)
{
 struct nh_group *nhg = rcu_dereference_rtnl(nh->nh_grp);
 int i, num_nh = nhg->num_nh;

 for (i = 0; i < num_nh; ++i) {
  struct nh_grp_entry *nhge = &nhg->nh_entries[i];

  if (WARN_ON(!nhge->nh))
   continue;

  list_del(&nhge->nh_list);
  nexthop_put(nhge->nh);
  nhge->nh = ((void*)0);
  nhg->num_nh--;
 }
}
