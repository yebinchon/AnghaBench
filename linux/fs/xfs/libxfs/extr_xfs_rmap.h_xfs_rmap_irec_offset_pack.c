
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_rmap_irec {int rm_flags; int rm_offset; } ;
typedef int __u64 ;


 int XFS_RMAP_ATTR_FORK ;
 int XFS_RMAP_BMBT_BLOCK ;
 int XFS_RMAP_OFF (int ) ;
 int XFS_RMAP_OFF_ATTR_FORK ;
 int XFS_RMAP_OFF_BMBT_BLOCK ;
 int XFS_RMAP_OFF_UNWRITTEN ;
 int XFS_RMAP_UNWRITTEN ;

__attribute__((used)) static inline __u64
xfs_rmap_irec_offset_pack(
 const struct xfs_rmap_irec *irec)
{
 __u64 x;

 x = XFS_RMAP_OFF(irec->rm_offset);
 if (irec->rm_flags & XFS_RMAP_ATTR_FORK)
  x |= XFS_RMAP_OFF_ATTR_FORK;
 if (irec->rm_flags & XFS_RMAP_BMBT_BLOCK)
  x |= XFS_RMAP_OFF_BMBT_BLOCK;
 if (irec->rm_flags & XFS_RMAP_UNWRITTEN)
  x |= XFS_RMAP_OFF_UNWRITTEN;
 return x;
}
