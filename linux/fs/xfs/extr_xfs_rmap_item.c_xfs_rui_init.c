
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct TYPE_2__ {uintptr_t rui_id; scalar_t__ rui_nextents; } ;
struct xfs_rui_log_item {int rui_refcount; int rui_next_extent; TYPE_1__ rui_format; int rui_item; } ;
struct xfs_mount {int dummy; } ;


 int ASSERT (int) ;
 int XFS_LI_RUI ;
 scalar_t__ XFS_RUI_MAX_FAST_EXTENTS ;
 int atomic_set (int *,int) ;
 struct xfs_rui_log_item* kmem_zalloc (int ,int ) ;
 struct xfs_rui_log_item* kmem_zone_zalloc (int ,int ) ;
 int xfs_log_item_init (struct xfs_mount*,int *,int ,int *) ;
 int xfs_rui_item_ops ;
 int xfs_rui_log_item_sizeof (scalar_t__) ;
 int xfs_rui_zone ;

struct xfs_rui_log_item *
xfs_rui_init(
 struct xfs_mount *mp,
 uint nextents)

{
 struct xfs_rui_log_item *ruip;

 ASSERT(nextents > 0);
 if (nextents > XFS_RUI_MAX_FAST_EXTENTS)
  ruip = kmem_zalloc(xfs_rui_log_item_sizeof(nextents), 0);
 else
  ruip = kmem_zone_zalloc(xfs_rui_zone, 0);

 xfs_log_item_init(mp, &ruip->rui_item, XFS_LI_RUI, &xfs_rui_item_ops);
 ruip->rui_format.rui_nextents = nextents;
 ruip->rui_format.rui_id = (uintptr_t)(void *)ruip;
 atomic_set(&ruip->rui_next_extent, 0);
 atomic_set(&ruip->rui_refcount, 2);

 return ruip;
}
