
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cluster_info {scalar_t__ data; int flags; } ;


 int CLUSTER_FLAG_NEXT_NULL ;

__attribute__((used)) static inline void cluster_set_null(struct swap_cluster_info *info)
{
 info->flags = CLUSTER_FLAG_NEXT_NULL;
 info->data = 0;
}
