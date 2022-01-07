
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cluster_info {int lock; } ;


 int spin_unlock (int *) ;

__attribute__((used)) static inline void unlock_cluster(struct swap_cluster_info *ci)
{
 if (ci)
  spin_unlock(&ci->lock);
}
