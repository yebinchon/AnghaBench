
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int lock; } ;
struct swap_cluster_info {int dummy; } ;


 struct swap_cluster_info* lock_cluster (struct swap_info_struct*,unsigned long) ;
 int spin_lock (int *) ;

__attribute__((used)) static inline struct swap_cluster_info *lock_cluster_or_swap_info(
  struct swap_info_struct *si, unsigned long offset)
{
 struct swap_cluster_info *ci;


 ci = lock_cluster(si, offset);

 if (!ci)
  spin_lock(&si->lock);

 return ci;
}
