
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cluster_info {unsigned int flags; unsigned int data; } ;



__attribute__((used)) static inline void cluster_set_next_flag(struct swap_cluster_info *info,
      unsigned int n, unsigned int f)
{
 info->flags = f;
 info->data = n;
}
