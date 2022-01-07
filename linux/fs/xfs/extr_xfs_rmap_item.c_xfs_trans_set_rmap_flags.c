
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_exntst_t ;
struct xfs_map_extent {int me_flags; } ;
typedef enum xfs_rmap_intent_type { ____Placeholder_xfs_rmap_intent_type } xfs_rmap_intent_type ;


 int ASSERT (int ) ;
 int XFS_ATTR_FORK ;
 scalar_t__ XFS_EXT_UNWRITTEN ;



 int XFS_RMAP_EXTENT_ALLOC ;
 int XFS_RMAP_EXTENT_ATTR_FORK ;
 int XFS_RMAP_EXTENT_CONVERT ;
 int XFS_RMAP_EXTENT_CONVERT_SHARED ;
 int XFS_RMAP_EXTENT_FREE ;
 int XFS_RMAP_EXTENT_MAP ;
 int XFS_RMAP_EXTENT_MAP_SHARED ;
 int XFS_RMAP_EXTENT_UNMAP ;
 int XFS_RMAP_EXTENT_UNMAP_SHARED ;
 int XFS_RMAP_EXTENT_UNWRITTEN ;






__attribute__((used)) static void
xfs_trans_set_rmap_flags(
 struct xfs_map_extent *rmap,
 enum xfs_rmap_intent_type type,
 int whichfork,
 xfs_exntst_t state)
{
 rmap->me_flags = 0;
 if (state == XFS_EXT_UNWRITTEN)
  rmap->me_flags |= XFS_RMAP_EXTENT_UNWRITTEN;
 if (whichfork == XFS_ATTR_FORK)
  rmap->me_flags |= XFS_RMAP_EXTENT_ATTR_FORK;
 switch (type) {
 case 131:
  rmap->me_flags |= XFS_RMAP_EXTENT_MAP;
  break;
 case 130:
  rmap->me_flags |= XFS_RMAP_EXTENT_MAP_SHARED;
  break;
 case 129:
  rmap->me_flags |= XFS_RMAP_EXTENT_UNMAP;
  break;
 case 128:
  rmap->me_flags |= XFS_RMAP_EXTENT_UNMAP_SHARED;
  break;
 case 134:
  rmap->me_flags |= XFS_RMAP_EXTENT_CONVERT;
  break;
 case 133:
  rmap->me_flags |= XFS_RMAP_EXTENT_CONVERT_SHARED;
  break;
 case 135:
  rmap->me_flags |= XFS_RMAP_EXTENT_ALLOC;
  break;
 case 132:
  rmap->me_flags |= XFS_RMAP_EXTENT_FREE;
  break;
 default:
  ASSERT(0);
 }
}
