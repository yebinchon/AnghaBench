
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cluster_info {int flags; } ;


 int CLUSTER_FLAG_HUGE ;

__attribute__((used)) static inline void cluster_clear_huge(struct swap_cluster_info *info)
{
 info->flags &= ~CLUSTER_FLAG_HUGE;
}
