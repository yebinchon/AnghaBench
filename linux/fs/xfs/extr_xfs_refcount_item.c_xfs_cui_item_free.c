
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cui_nextents; } ;
struct xfs_cui_log_item {TYPE_1__ cui_format; } ;


 scalar_t__ XFS_CUI_MAX_FAST_EXTENTS ;
 int kmem_free (struct xfs_cui_log_item*) ;
 int kmem_zone_free (int ,struct xfs_cui_log_item*) ;
 int xfs_cui_zone ;

void
xfs_cui_item_free(
 struct xfs_cui_log_item *cuip)
{
 if (cuip->cui_format.cui_nextents > XFS_CUI_MAX_FAST_EXTENTS)
  kmem_free(cuip);
 else
  kmem_zone_free(xfs_cui_zone, cuip);
}
