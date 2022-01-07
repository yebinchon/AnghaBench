
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct xfs_rmap_irec {scalar_t__ rm_owner; unsigned int rm_flags; } ;


 unsigned int XFS_RMAP_ATTR_FORK ;
 unsigned int XFS_RMAP_BMBT_BLOCK ;
 scalar_t__ XFS_RMAP_OWN_NULL ;
 unsigned int XFS_RMAP_UNWRITTEN ;

__attribute__((used)) static bool
xfs_rmap_is_mergeable(
 struct xfs_rmap_irec *irec,
 uint64_t owner,
 unsigned int flags)
{
 if (irec->rm_owner == XFS_RMAP_OWN_NULL)
  return 0;
 if (irec->rm_owner != owner)
  return 0;
 if ((flags & XFS_RMAP_UNWRITTEN) ^
     (irec->rm_flags & XFS_RMAP_UNWRITTEN))
  return 0;
 if ((flags & XFS_RMAP_ATTR_FORK) ^
     (irec->rm_flags & XFS_RMAP_ATTR_FORK))
  return 0;
 if ((flags & XFS_RMAP_BMBT_BLOCK) ^
     (irec->rm_flags & XFS_RMAP_BMBT_BLOCK))
  return 0;
 return 1;
}
