
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {int sb_features2; } ;


 int XFS_SB_FEAT_INCOMPAT_FTYPE ;
 int XFS_SB_VERSION2_FTYPE ;
 scalar_t__ XFS_SB_VERSION_5 ;
 scalar_t__ XFS_SB_VERSION_NUM (struct xfs_sb*) ;
 scalar_t__ xfs_sb_has_incompat_feature (struct xfs_sb*,int ) ;
 scalar_t__ xfs_sb_version_hasmorebits (struct xfs_sb*) ;

__attribute__((used)) static inline int xfs_sb_version_hasftype(struct xfs_sb *sbp)
{
 return (XFS_SB_VERSION_NUM(sbp) == XFS_SB_VERSION_5 &&
  xfs_sb_has_incompat_feature(sbp, XFS_SB_FEAT_INCOMPAT_FTYPE)) ||
        (xfs_sb_version_hasmorebits(sbp) &&
   (sbp->sb_features2 & XFS_SB_VERSION2_FTYPE));
}
