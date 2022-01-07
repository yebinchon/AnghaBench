
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int discard_work; int cluster_info; int discard_clusters; scalar_t__ swap_map; } ;


 unsigned int SWAPFILE_CLUSTER ;
 int SWAP_MAP_BAD ;
 int cluster_list_add_tail (int *,int ,unsigned int) ;
 int memset (scalar_t__,int ,unsigned int) ;
 int schedule_work (int *) ;

__attribute__((used)) static void swap_cluster_schedule_discard(struct swap_info_struct *si,
  unsigned int idx)
{






 memset(si->swap_map + idx * SWAPFILE_CLUSTER,
   SWAP_MAP_BAD, SWAPFILE_CLUSTER);

 cluster_list_add_tail(&si->discard_clusters, si->cluster_info, idx);

 schedule_work(&si->discard_work);
}
