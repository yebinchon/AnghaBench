
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_rmap_irec {int rm_flags; } ;
struct xfs_fsmap {int fmr_flags; } ;


 int FMR_OF_ATTR_FORK ;
 int FMR_OF_EXTENT_MAP ;
 int FMR_OF_PREALLOC ;
 int XFS_RMAP_ATTR_FORK ;
 int XFS_RMAP_BMBT_BLOCK ;
 int XFS_RMAP_UNWRITTEN ;

__attribute__((used)) static void
xfs_getfsmap_set_irec_flags(
 struct xfs_rmap_irec *irec,
 struct xfs_fsmap *fmr)
{
 irec->rm_flags = 0;
 if (fmr->fmr_flags & FMR_OF_ATTR_FORK)
  irec->rm_flags |= XFS_RMAP_ATTR_FORK;
 if (fmr->fmr_flags & FMR_OF_EXTENT_MAP)
  irec->rm_flags |= XFS_RMAP_BMBT_BLOCK;
 if (fmr->fmr_flags & FMR_OF_PREALLOC)
  irec->rm_flags |= XFS_RMAP_UNWRITTEN;
}
