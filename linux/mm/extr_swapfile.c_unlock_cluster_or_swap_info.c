
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int lock; } ;
struct swap_cluster_info {int dummy; } ;


 int spin_unlock (int *) ;
 int unlock_cluster (struct swap_cluster_info*) ;

__attribute__((used)) static inline void unlock_cluster_or_swap_info(struct swap_info_struct *si,
            struct swap_cluster_info *ci)
{
 if (ci)
  unlock_cluster(ci);
 else
  spin_unlock(&si->lock);
}
