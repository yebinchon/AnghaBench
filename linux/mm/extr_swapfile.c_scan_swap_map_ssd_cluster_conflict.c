
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int percpu_cluster; int * cluster_info; int free_clusters; } ;
struct percpu_cluster {int index; } ;


 unsigned long SWAPFILE_CLUSTER ;
 scalar_t__ cluster_is_free (int *) ;
 int cluster_list_empty (int *) ;
 unsigned long cluster_list_first (int *) ;
 int cluster_set_null (int *) ;
 struct percpu_cluster* this_cpu_ptr (int ) ;

__attribute__((used)) static bool
scan_swap_map_ssd_cluster_conflict(struct swap_info_struct *si,
 unsigned long offset)
{
 struct percpu_cluster *percpu_cluster;
 bool conflict;

 offset /= SWAPFILE_CLUSTER;
 conflict = !cluster_list_empty(&si->free_clusters) &&
  offset != cluster_list_first(&si->free_clusters) &&
  cluster_is_free(&si->cluster_info[offset]);

 if (!conflict)
  return 0;

 percpu_cluster = this_cpu_ptr(si->percpu_cluster);
 cluster_set_null(&percpu_cluster->index);
 return 1;
}
