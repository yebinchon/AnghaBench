
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_exntst_t ;
struct xfs_map_extent {int me_flags; } ;
typedef enum xfs_bmap_intent_type { ____Placeholder_xfs_bmap_intent_type } xfs_bmap_intent_type ;


 int ASSERT (int ) ;
 int XFS_ATTR_FORK ;
 int XFS_BMAP_EXTENT_ATTR_FORK ;
 int XFS_BMAP_EXTENT_UNWRITTEN ;


 scalar_t__ XFS_EXT_UNWRITTEN ;

__attribute__((used)) static void
xfs_trans_set_bmap_flags(
 struct xfs_map_extent *bmap,
 enum xfs_bmap_intent_type type,
 int whichfork,
 xfs_exntst_t state)
{
 bmap->me_flags = 0;
 switch (type) {
 case 129:
 case 128:
  bmap->me_flags = type;
  break;
 default:
  ASSERT(0);
 }
 if (state == XFS_EXT_UNWRITTEN)
  bmap->me_flags |= XFS_BMAP_EXTENT_UNWRITTEN;
 if (whichfork == XFS_ATTR_FORK)
  bmap->me_flags |= XFS_BMAP_EXTENT_ATTR_FORK;
}
