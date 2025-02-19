
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {struct swap_cluster_info* cluster_info; } ;
struct swap_cluster_info {int lock; } ;


 unsigned long SWAPFILE_CLUSTER ;
 int spin_lock (int *) ;

__attribute__((used)) static inline struct swap_cluster_info *lock_cluster(struct swap_info_struct *si,
           unsigned long offset)
{
 struct swap_cluster_info *ci;

 ci = si->cluster_info;
 if (ci) {
  ci += offset / SWAPFILE_CLUSTER;
  spin_lock(&ci->lock);
 }
 return ci;
}
