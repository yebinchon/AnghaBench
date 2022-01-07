
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int list_sort (int *,struct list_head*,int ) ;
 int xfs_extent_busy_ag_cmp ;

__attribute__((used)) static inline void xfs_extent_busy_sort(struct list_head *list)
{
 list_sort(((void*)0), list, xfs_extent_busy_ag_cmp);
}
