
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {scalar_t__ swap_map; } ;
struct swap_cluster_info {int dummy; } ;


 unsigned long SWAPFILE_CLUSTER ;
 int cluster_set_count_flag (struct swap_cluster_info*,int ,int ) ;
 int free_cluster (struct swap_info_struct*,unsigned long) ;
 struct swap_cluster_info* lock_cluster (struct swap_info_struct*,unsigned long) ;
 int memset (scalar_t__,int ,unsigned long) ;
 int swap_range_free (struct swap_info_struct*,unsigned long,unsigned long) ;
 int unlock_cluster (struct swap_cluster_info*) ;

__attribute__((used)) static void swap_free_cluster(struct swap_info_struct *si, unsigned long idx)
{
 unsigned long offset = idx * SWAPFILE_CLUSTER;
 struct swap_cluster_info *ci;

 ci = lock_cluster(si, offset);
 memset(si->swap_map + offset, 0, SWAPFILE_CLUSTER);
 cluster_set_count_flag(ci, 0, 0);
 free_cluster(si, idx);
 unlock_cluster(ci);
 swap_range_free(si, offset, SWAPFILE_CLUSTER);
}
