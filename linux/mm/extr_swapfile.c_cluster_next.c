
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cluster_info {unsigned int data; } ;



__attribute__((used)) static inline unsigned int cluster_next(struct swap_cluster_info *info)
{
 return info->data;
}
