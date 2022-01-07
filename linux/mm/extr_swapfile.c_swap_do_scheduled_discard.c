
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {scalar_t__ swap_map; int lock; int discard_clusters; struct swap_cluster_info* cluster_info; } ;
struct swap_cluster_info {int dummy; } ;


 unsigned int SWAPFILE_CLUSTER ;
 int __free_cluster (struct swap_info_struct*,unsigned int) ;
 unsigned int cluster_list_del_first (int *,struct swap_cluster_info*) ;
 int cluster_list_empty (int *) ;
 int discard_swap_cluster (struct swap_info_struct*,unsigned int,unsigned int) ;
 struct swap_cluster_info* lock_cluster (struct swap_info_struct*,unsigned int) ;
 int memset (scalar_t__,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_cluster (struct swap_cluster_info*) ;

__attribute__((used)) static void swap_do_scheduled_discard(struct swap_info_struct *si)
{
 struct swap_cluster_info *info, *ci;
 unsigned int idx;

 info = si->cluster_info;

 while (!cluster_list_empty(&si->discard_clusters)) {
  idx = cluster_list_del_first(&si->discard_clusters, info);
  spin_unlock(&si->lock);

  discard_swap_cluster(si, idx * SWAPFILE_CLUSTER,
    SWAPFILE_CLUSTER);

  spin_lock(&si->lock);
  ci = lock_cluster(si, idx * SWAPFILE_CLUSTER);
  __free_cluster(si, idx);
  memset(si->swap_map + idx * SWAPFILE_CLUSTER,
    0, SWAPFILE_CLUSTER);
  unlock_cluster(ci);
 }
}
