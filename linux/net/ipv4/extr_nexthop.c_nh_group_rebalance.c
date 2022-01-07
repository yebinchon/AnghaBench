
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nh_grp_entry {int upper_bound; scalar_t__ weight; } ;
struct nh_group {int num_nh; struct nh_grp_entry* nh_entries; } ;


 int DIV_ROUND_CLOSEST_ULL (int,int) ;
 int atomic_set (int *,int) ;

__attribute__((used)) static void nh_group_rebalance(struct nh_group *nhg)
{
 int total = 0;
 int w = 0;
 int i;

 for (i = 0; i < nhg->num_nh; ++i)
  total += nhg->nh_entries[i].weight;

 for (i = 0; i < nhg->num_nh; ++i) {
  struct nh_grp_entry *nhge = &nhg->nh_entries[i];
  int upper_bound;

  w += nhge->weight;
  upper_bound = DIV_ROUND_CLOSEST_ULL((u64)w << 31, total) - 1;
  atomic_set(&nhge->upper_bound, upper_bound);
 }
}
