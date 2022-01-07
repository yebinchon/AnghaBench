
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int free_clusters; struct swap_cluster_info* cluster_info; } ;
struct swap_cluster_info {int dummy; } ;


 int CLUSTER_FLAG_FREE ;
 int cluster_list_add_tail (int *,struct swap_cluster_info*,unsigned long) ;
 int cluster_set_flag (struct swap_cluster_info*,int ) ;

__attribute__((used)) static void __free_cluster(struct swap_info_struct *si, unsigned long idx)
{
 struct swap_cluster_info *ci = si->cluster_info;

 cluster_set_flag(ci + idx, CLUSTER_FLAG_FREE);
 cluster_list_add_tail(&si->free_clusters, ci, idx);
}
