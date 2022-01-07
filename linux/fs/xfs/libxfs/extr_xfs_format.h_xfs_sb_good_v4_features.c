
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {int sb_versionnum; int sb_features2; } ;


 int XFS_SB_VERSION2_OKBITS ;
 int XFS_SB_VERSION_DIRV2BIT ;
 int XFS_SB_VERSION_EXTFLGBIT ;
 int XFS_SB_VERSION_MOREBITSBIT ;
 int XFS_SB_VERSION_OKBITS ;

__attribute__((used)) static inline bool xfs_sb_good_v4_features(struct xfs_sb *sbp)
{
 if (!(sbp->sb_versionnum & XFS_SB_VERSION_DIRV2BIT))
  return 0;
 if (!(sbp->sb_versionnum & XFS_SB_VERSION_EXTFLGBIT))
  return 0;


 if ((sbp->sb_versionnum & ~XFS_SB_VERSION_OKBITS) ||
     ((sbp->sb_versionnum & XFS_SB_VERSION_MOREBITSBIT) &&
      (sbp->sb_features2 & ~XFS_SB_VERSION2_OKBITS)))
  return 0;

 return 1;
}
