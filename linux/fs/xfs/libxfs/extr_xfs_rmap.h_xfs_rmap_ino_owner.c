
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_ino_t ;
typedef int xfs_fileoff_t ;
struct xfs_owner_info {int oi_flags; int oi_offset; int oi_owner; } ;


 int XFS_ATTR_FORK ;
 int XFS_OWNER_INFO_ATTR_FORK ;

__attribute__((used)) static inline void
xfs_rmap_ino_owner(
 struct xfs_owner_info *oi,
 xfs_ino_t ino,
 int whichfork,
 xfs_fileoff_t offset)
{
 oi->oi_owner = ino;
 oi->oi_offset = offset;
 oi->oi_flags = 0;
 if (whichfork == XFS_ATTR_FORK)
  oi->oi_flags |= XFS_OWNER_INFO_ATTR_FORK;
}
