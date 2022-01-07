
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int free_clusters; struct swap_cluster_info* cluster_info; } ;
struct swap_cluster_info {int dummy; } ;


 int VM_BUG_ON (int) ;
 int cluster_list_del_first (int *,struct swap_cluster_info*) ;
 unsigned long cluster_list_first (int *) ;
 int cluster_set_count_flag (struct swap_cluster_info*,int ,int ) ;

__attribute__((used)) static void alloc_cluster(struct swap_info_struct *si, unsigned long idx)
{
 struct swap_cluster_info *ci = si->cluster_info;

 VM_BUG_ON(cluster_list_first(&si->free_clusters) != idx);
 cluster_list_del_first(&si->free_clusters, ci);
 cluster_set_count_flag(ci + idx, 0, 0);
}
