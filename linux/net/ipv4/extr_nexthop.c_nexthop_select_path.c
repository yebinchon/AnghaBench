
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nh_info {int family; int fib6_nh; int fib_nh; } ;
struct nh_grp_entry {struct nexthop* nh; int upper_bound; } ;
struct nh_group {int num_nh; struct nh_grp_entry* nh_entries; } ;
struct nexthop {int nh_info; int nh_grp; int is_group; } ;




 int atomic_read (int *) ;
 int ipv4_good_nh (int *) ;
 int ipv6_good_nh (int *) ;
 void* rcu_dereference (int ) ;

struct nexthop *nexthop_select_path(struct nexthop *nh, int hash)
{
 struct nexthop *rc = ((void*)0);
 struct nh_group *nhg;
 int i;

 if (!nh->is_group)
  return nh;

 nhg = rcu_dereference(nh->nh_grp);
 for (i = 0; i < nhg->num_nh; ++i) {
  struct nh_grp_entry *nhge = &nhg->nh_entries[i];
  struct nh_info *nhi;

  if (hash > atomic_read(&nhge->upper_bound))
   continue;




  nhi = rcu_dereference(nhge->nh->nh_info);
  switch (nhi->family) {
  case 129:
   if (ipv4_good_nh(&nhi->fib_nh))
    return nhge->nh;
   break;
  case 128:
   if (ipv6_good_nh(&nhi->fib6_nh))
    return nhge->nh;
   break;
  }

  if (!rc)
   rc = nhge->nh;
 }

 return rc;
}
