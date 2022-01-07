
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cluster_info {unsigned int flags; } ;



__attribute__((used)) static inline void cluster_set_flag(struct swap_cluster_info *info,
 unsigned int flag)
{
 info->flags = flag;
}
