
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {int dummy; } ;


 scalar_t__ XFS_SB_VERSION_4 ;
 scalar_t__ XFS_SB_VERSION_5 ;
 scalar_t__ XFS_SB_VERSION_NUM (struct xfs_sb*) ;
 int xfs_sb_good_v4_features (struct xfs_sb*) ;

__attribute__((used)) static inline bool xfs_sb_good_version(struct xfs_sb *sbp)
{
 if (XFS_SB_VERSION_NUM(sbp) == XFS_SB_VERSION_5)
  return 1;
 if (XFS_SB_VERSION_NUM(sbp) == XFS_SB_VERSION_4)
  return xfs_sb_good_v4_features(sbp);
 return 0;
}
