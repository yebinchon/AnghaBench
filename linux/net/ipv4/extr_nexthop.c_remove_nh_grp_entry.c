
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_info {int dummy; } ;
struct nh_grp_entry {int nh_parent; struct nexthop* nh; int nh_list; int weight; } ;
struct nh_group {int num_nh; struct nh_grp_entry* nh_entries; } ;
struct nexthop {int grp_list; } ;


 int RTM_NEWNEXTHOP ;
 scalar_t__ WARN_ON (int) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int nexthop_notify (int ,int ,struct nl_info*) ;
 int nexthop_put (struct nexthop*) ;
 int nh_group_rebalance (struct nh_group*) ;

__attribute__((used)) static void remove_nh_grp_entry(struct nh_grp_entry *nhge,
    struct nh_group *nhg,
    struct nl_info *nlinfo)
{
 struct nexthop *nh = nhge->nh;
 struct nh_grp_entry *nhges;
 bool found = 0;
 int i;

 WARN_ON(!nh);

 nhges = nhg->nh_entries;
 for (i = 0; i < nhg->num_nh; ++i) {
  if (found) {
   nhges[i-1].nh = nhges[i].nh;
   nhges[i-1].weight = nhges[i].weight;
   list_del(&nhges[i].nh_list);
   list_add(&nhges[i-1].nh_list, &nhges[i-1].nh->grp_list);
  } else if (nhg->nh_entries[i].nh == nh) {
   found = 1;
  }
 }

 if (WARN_ON(!found))
  return;

 nhg->num_nh--;
 nhg->nh_entries[nhg->num_nh].nh = ((void*)0);

 nh_group_rebalance(nhg);

 nexthop_put(nh);

 if (nlinfo)
  nexthop_notify(RTM_NEWNEXTHOP, nhge->nh_parent, nlinfo);
}
