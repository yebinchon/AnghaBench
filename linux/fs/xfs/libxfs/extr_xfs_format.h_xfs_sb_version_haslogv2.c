
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {int sb_versionnum; } ;


 scalar_t__ XFS_SB_VERSION_5 ;
 int XFS_SB_VERSION_LOGV2BIT ;
 scalar_t__ XFS_SB_VERSION_NUM (struct xfs_sb*) ;

__attribute__((used)) static inline bool xfs_sb_version_haslogv2(struct xfs_sb *sbp)
{
 return XFS_SB_VERSION_NUM(sbp) == XFS_SB_VERSION_5 ||
        (sbp->sb_versionnum & XFS_SB_VERSION_LOGV2BIT);
}
