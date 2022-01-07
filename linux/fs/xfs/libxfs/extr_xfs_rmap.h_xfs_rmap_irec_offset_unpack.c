
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_rmap_irec {int rm_flags; int rm_offset; } ;
typedef int __u64 ;


 int EFSCORRUPTED ;
 int XFS_RMAP_ATTR_FORK ;
 int XFS_RMAP_BMBT_BLOCK ;
 int XFS_RMAP_OFF (int) ;
 int XFS_RMAP_OFF_ATTR_FORK ;
 int XFS_RMAP_OFF_BMBT_BLOCK ;
 int XFS_RMAP_OFF_FLAGS ;
 int XFS_RMAP_OFF_MASK ;
 int XFS_RMAP_OFF_UNWRITTEN ;
 int XFS_RMAP_UNWRITTEN ;

__attribute__((used)) static inline int
xfs_rmap_irec_offset_unpack(
 __u64 offset,
 struct xfs_rmap_irec *irec)
{
 if (offset & ~(XFS_RMAP_OFF_MASK | XFS_RMAP_OFF_FLAGS))
  return -EFSCORRUPTED;
 irec->rm_offset = XFS_RMAP_OFF(offset);
 irec->rm_flags = 0;
 if (offset & XFS_RMAP_OFF_ATTR_FORK)
  irec->rm_flags |= XFS_RMAP_ATTR_FORK;
 if (offset & XFS_RMAP_OFF_BMBT_BLOCK)
  irec->rm_flags |= XFS_RMAP_BMBT_BLOCK;
 if (offset & XFS_RMAP_OFF_UNWRITTEN)
  irec->rm_flags |= XFS_RMAP_UNWRITTEN;
 return 0;
}
