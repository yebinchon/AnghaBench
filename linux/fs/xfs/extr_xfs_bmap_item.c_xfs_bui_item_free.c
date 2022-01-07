
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_bui_log_item {int dummy; } ;


 int kmem_zone_free (int ,struct xfs_bui_log_item*) ;
 int xfs_bui_zone ;

void
xfs_bui_item_free(
 struct xfs_bui_log_item *buip)
{
 kmem_zone_free(xfs_bui_zone, buip);
}
