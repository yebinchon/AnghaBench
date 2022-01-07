
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_bitmap {int list; } ;


 int INIT_LIST_HEAD (int *) ;

void
xfs_bitmap_init(
 struct xfs_bitmap *bitmap)
{
 INIT_LIST_HEAD(&bitmap->list);
}
