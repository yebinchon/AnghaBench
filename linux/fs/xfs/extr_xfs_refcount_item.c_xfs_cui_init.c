
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {uintptr_t cui_id; scalar_t__ cui_nextents; } ;
struct xfs_cui_log_item {int cui_refcount; int cui_next_extent; TYPE_1__ cui_format; int cui_item; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_CUI_MAX_FAST_EXTENTS ;
 int XFS_LI_CUI ;
 int atomic_set (int *,int) ;
 struct xfs_cui_log_item* kmem_zalloc (int ,int ) ;
 struct xfs_cui_log_item* kmem_zone_zalloc (int ,int ) ;
 int xfs_cui_item_ops ;
 int xfs_cui_log_item_sizeof (scalar_t__) ;
 int xfs_cui_zone ;
 int xfs_log_item_init (struct xfs_mount*,int *,int ,int *) ;

struct xfs_cui_log_item *
xfs_cui_init(
 struct xfs_mount *mp,
 uint nextents)

{
 struct xfs_cui_log_item *cuip;

 ASSERT(nextents > 0);
 if (nextents > XFS_CUI_MAX_FAST_EXTENTS)
  cuip = kmem_zalloc(xfs_cui_log_item_sizeof(nextents),
    0);
 else
  cuip = kmem_zone_zalloc(xfs_cui_zone, 0);

 xfs_log_item_init(mp, &cuip->cui_item, XFS_LI_CUI, &xfs_cui_item_ops);
 cuip->cui_format.cui_nextents = nextents;
 cuip->cui_format.cui_id = (uintptr_t)(void *)cuip;
 atomic_set(&cuip->cui_next_extent, 0);
 atomic_set(&cuip->cui_refcount, 2);

 return cuip;
}
