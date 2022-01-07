
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cluster_info {int flags; } ;


 int CLUSTER_FLAG_HUGE ;
 int CONFIG_THP_SWAP ;
 scalar_t__ IS_ENABLED (int ) ;

__attribute__((used)) static inline bool cluster_is_huge(struct swap_cluster_info *info)
{
 if (IS_ENABLED(CONFIG_THP_SWAP))
  return info->flags & CLUSTER_FLAG_HUGE;
 return 0;
}
