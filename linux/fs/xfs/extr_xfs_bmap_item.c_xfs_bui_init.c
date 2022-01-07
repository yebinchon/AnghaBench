
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_mount {int dummy; } ;
struct TYPE_2__ {uintptr_t bui_id; int bui_nextents; } ;
struct xfs_bui_log_item {int bui_refcount; int bui_next_extent; TYPE_1__ bui_format; int bui_item; } ;


 int XFS_BUI_MAX_FAST_EXTENTS ;
 int XFS_LI_BUI ;
 int atomic_set (int *,int) ;
 struct xfs_bui_log_item* kmem_zone_zalloc (int ,int ) ;
 int xfs_bui_item_ops ;
 int xfs_bui_zone ;
 int xfs_log_item_init (struct xfs_mount*,int *,int ,int *) ;

struct xfs_bui_log_item *
xfs_bui_init(
 struct xfs_mount *mp)

{
 struct xfs_bui_log_item *buip;

 buip = kmem_zone_zalloc(xfs_bui_zone, 0);

 xfs_log_item_init(mp, &buip->bui_item, XFS_LI_BUI, &xfs_bui_item_ops);
 buip->bui_format.bui_nextents = XFS_BUI_MAX_FAST_EXTENTS;
 buip->bui_format.bui_id = (uintptr_t)(void *)buip;
 atomic_set(&buip->bui_next_extent, 0);
 atomic_set(&buip->bui_refcount, 2);

 return buip;
}
