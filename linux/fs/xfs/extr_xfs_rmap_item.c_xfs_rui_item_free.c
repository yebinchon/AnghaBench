
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rui_nextents; } ;
struct xfs_rui_log_item {TYPE_1__ rui_format; } ;


 scalar_t__ XFS_RUI_MAX_FAST_EXTENTS ;
 int kmem_free (struct xfs_rui_log_item*) ;
 int kmem_zone_free (int ,struct xfs_rui_log_item*) ;
 int xfs_rui_zone ;

void
xfs_rui_item_free(
 struct xfs_rui_log_item *ruip)
{
 if (ruip->rui_format.rui_nextents > XFS_RUI_MAX_FAST_EXTENTS)
  kmem_free(ruip);
 else
  kmem_zone_free(xfs_rui_zone, ruip);
}
