
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int dummy; } ;
struct swap_cluster_info {int dummy; } ;


 unsigned long SWAPFILE_CLUSTER ;
 int VM_BUG_ON (int) ;
 scalar_t__ cluster_count (struct swap_cluster_info*) ;
 int cluster_set_count (struct swap_cluster_info*,scalar_t__) ;
 int free_cluster (struct swap_info_struct*,unsigned long) ;

__attribute__((used)) static void dec_cluster_info_page(struct swap_info_struct *p,
 struct swap_cluster_info *cluster_info, unsigned long page_nr)
{
 unsigned long idx = page_nr / SWAPFILE_CLUSTER;

 if (!cluster_info)
  return;

 VM_BUG_ON(cluster_count(&cluster_info[idx]) == 0);
 cluster_set_count(&cluster_info[idx],
  cluster_count(&cluster_info[idx]) - 1);

 if (cluster_count(&cluster_info[idx]) == 0)
  free_cluster(p, idx);
}
