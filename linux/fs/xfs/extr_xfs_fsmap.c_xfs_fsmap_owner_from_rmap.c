
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_rmap_irec {int rm_owner; } ;
struct xfs_fsmap {int fmr_owner; int fmr_flags; } ;


 int EFSCORRUPTED ;
 int FMR_OF_SPECIAL_OWNER ;
 int XFS_FMR_OWN_AG ;
 int XFS_FMR_OWN_COW ;
 int XFS_FMR_OWN_FREE ;
 int XFS_FMR_OWN_FS ;
 int XFS_FMR_OWN_INOBT ;
 int XFS_FMR_OWN_INODES ;
 int XFS_FMR_OWN_LOG ;
 int XFS_FMR_OWN_REFC ;
 int XFS_RMAP_NON_INODE_OWNER (int) ;
__attribute__((used)) static int
xfs_fsmap_owner_from_rmap(
 struct xfs_fsmap *dest,
 struct xfs_rmap_irec *src)
{
 dest->fmr_flags = 0;
 if (!XFS_RMAP_NON_INODE_OWNER(src->rm_owner)) {
  dest->fmr_owner = src->rm_owner;
  return 0;
 }
 dest->fmr_flags |= FMR_OF_SPECIAL_OWNER;

 switch (src->rm_owner) {
 case 133:
  dest->fmr_owner = XFS_FMR_OWN_FS;
  break;
 case 130:
  dest->fmr_owner = XFS_FMR_OWN_LOG;
  break;
 case 135:
  dest->fmr_owner = XFS_FMR_OWN_AG;
  break;
 case 132:
  dest->fmr_owner = XFS_FMR_OWN_INOBT;
  break;
 case 131:
  dest->fmr_owner = XFS_FMR_OWN_INODES;
  break;
 case 128:
  dest->fmr_owner = XFS_FMR_OWN_REFC;
  break;
 case 134:
  dest->fmr_owner = XFS_FMR_OWN_COW;
  break;
 case 129:
  dest->fmr_owner = XFS_FMR_OWN_FREE;
  break;
 default:
  return -EFSCORRUPTED;
 }
 return 0;
}
