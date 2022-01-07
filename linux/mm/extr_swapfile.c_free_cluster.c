
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int flags; struct swap_cluster_info* cluster_info; } ;
struct swap_cluster_info {int dummy; } ;


 int SWP_PAGE_DISCARD ;
 int SWP_WRITEOK ;
 int VM_BUG_ON (int) ;
 int __free_cluster (struct swap_info_struct*,unsigned long) ;
 scalar_t__ cluster_count (struct swap_cluster_info*) ;
 int swap_cluster_schedule_discard (struct swap_info_struct*,unsigned long) ;

__attribute__((used)) static void free_cluster(struct swap_info_struct *si, unsigned long idx)
{
 struct swap_cluster_info *ci = si->cluster_info + idx;

 VM_BUG_ON(cluster_count(ci) != 0);





 if ((si->flags & (SWP_WRITEOK | SWP_PAGE_DISCARD)) ==
     (SWP_WRITEOK | SWP_PAGE_DISCARD)) {
  swap_cluster_schedule_discard(si, idx);
  return;
 }

 __free_cluster(si, idx);
}
