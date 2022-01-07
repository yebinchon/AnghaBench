
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
 int XFS_RMAP_OFF (int ) ;

__attribute__((used)) static inline void
xfs_owner_info_pack(
 struct xfs_owner_info *oinfo,
 uint64_t owner,
 uint64_t offset,
 unsigned int flags)
{
 oinfo->oi_owner = owner;
 oinfo->oi_offset = XFS_RMAP_OFF(offset);
 oinfo->oi_flags = 0;
 if (flags & XFS_RMAP_ATTR_FORK)
  oinfo->oi_flags |= XFS_OWNER_INFO_ATTR_FORK;
 if (flags & XFS_RMAP_BMBT_BLOCK)
  oinfo->oi_flags |= XFS_OWNER_INFO_BMBT_BLOCK;
}
