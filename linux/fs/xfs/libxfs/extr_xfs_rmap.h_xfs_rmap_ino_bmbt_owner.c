
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_ino_t ;
struct xfs_owner_info {int oi_flags; scalar_t__ oi_offset; int oi_owner; } ;


 int XFS_ATTR_FORK ;
 int XFS_OWNER_INFO_ATTR_FORK ;
 int XFS_OWNER_INFO_BMBT_BLOCK ;

__attribute__((used)) static inline void
xfs_rmap_ino_bmbt_owner(
 struct xfs_owner_info *oi,
 xfs_ino_t ino,
 int whichfork)
{
 oi->oi_owner = ino;
 oi->oi_offset = 0;
 oi->oi_flags = XFS_OWNER_INFO_BMBT_BLOCK;
 if (whichfork == XFS_ATTR_FORK)
  oi->oi_flags |= XFS_OWNER_INFO_ATTR_FORK;
}
