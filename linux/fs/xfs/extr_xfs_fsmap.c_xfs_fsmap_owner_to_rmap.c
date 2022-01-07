
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_rmap_irec {int rm_owner; } ;
struct xfs_fsmap {int fmr_flags; int fmr_owner; } ;


 int EINVAL ;
 int FMR_OF_SPECIAL_OWNER ;
 int XFS_RMAP_OWN_AG ;
 int XFS_RMAP_OWN_COW ;
 int XFS_RMAP_OWN_FS ;
 int XFS_RMAP_OWN_INOBT ;
 int XFS_RMAP_OWN_INODES ;
 int XFS_RMAP_OWN_LOG ;
 int XFS_RMAP_OWN_NULL ;
 int XFS_RMAP_OWN_REFC ;
 int XFS_RMAP_OWN_UNKNOWN ;

__attribute__((used)) static int
xfs_fsmap_owner_to_rmap(
 struct xfs_rmap_irec *dest,
 struct xfs_fsmap *src)
{
 if (!(src->fmr_flags & FMR_OF_SPECIAL_OWNER)) {
  dest->rm_owner = src->fmr_owner;
  return 0;
 }

 switch (src->fmr_owner) {
 case 0:
 case -1ULL:
  dest->rm_owner = 0;
  break;
 case 134:
  dest->rm_owner = XFS_RMAP_OWN_NULL;
  break;
 case 128:
  dest->rm_owner = XFS_RMAP_OWN_UNKNOWN;
  break;
 case 133:
  dest->rm_owner = XFS_RMAP_OWN_FS;
  break;
 case 130:
  dest->rm_owner = XFS_RMAP_OWN_LOG;
  break;
 case 137:
  dest->rm_owner = XFS_RMAP_OWN_AG;
  break;
 case 132:
  dest->rm_owner = XFS_RMAP_OWN_INOBT;
  break;
 case 131:
  dest->rm_owner = XFS_RMAP_OWN_INODES;
  break;
 case 129:
  dest->rm_owner = XFS_RMAP_OWN_REFC;
  break;
 case 136:
  dest->rm_owner = XFS_RMAP_OWN_COW;
  break;
 case 135:

 default:
  return -EINVAL;
 }
 return 0;
}
