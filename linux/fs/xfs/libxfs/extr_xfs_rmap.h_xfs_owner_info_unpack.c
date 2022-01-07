
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct xfs_owner_info {int oi_flags; int oi_offset; int oi_owner; } ;


 int XFS_OWNER_INFO_ATTR_FORK ;
 int XFS_OWNER_INFO_BMBT_BLOCK ;
 unsigned int XFS_RMAP_ATTR_FORK ;
 unsigned int XFS_RMAP_BMBT_BLOCK ;

__attribute__((used)) static inline void
xfs_owner_info_unpack(
 const struct xfs_owner_info *oinfo,
 uint64_t *owner,
 uint64_t *offset,
 unsigned int *flags)
{
 unsigned int r = 0;

 *owner = oinfo->oi_owner;
 *offset = oinfo->oi_offset;
 if (oinfo->oi_flags & XFS_OWNER_INFO_ATTR_FORK)
  r |= XFS_RMAP_ATTR_FORK;
 if (oinfo->oi_flags & XFS_OWNER_INFO_BMBT_BLOCK)
  r |= XFS_RMAP_BMBT_BLOCK;
 *flags = r;
}
