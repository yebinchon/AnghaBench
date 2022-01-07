
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cluster_info {int flags; } ;


 int CLUSTER_FLAG_FREE ;

__attribute__((used)) static inline bool cluster_is_free(struct swap_cluster_info *info)
{
 return info->flags & CLUSTER_FLAG_FREE;
}
