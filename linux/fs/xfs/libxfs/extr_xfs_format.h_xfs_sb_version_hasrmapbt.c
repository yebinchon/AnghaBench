
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {int sb_features_ro_compat; } ;


 int XFS_SB_FEAT_RO_COMPAT_RMAPBT ;
 scalar_t__ XFS_SB_VERSION_5 ;
 scalar_t__ XFS_SB_VERSION_NUM (struct xfs_sb*) ;

__attribute__((used)) static inline bool xfs_sb_version_hasrmapbt(struct xfs_sb *sbp)
{
 return (XFS_SB_VERSION_NUM(sbp) == XFS_SB_VERSION_5) &&
  (sbp->sb_features_ro_compat & XFS_SB_FEAT_RO_COMPAT_RMAPBT);
}
