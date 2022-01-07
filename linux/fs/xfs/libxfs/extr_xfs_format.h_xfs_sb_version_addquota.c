
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {int sb_versionnum; } ;


 int XFS_SB_VERSION_QUOTABIT ;

__attribute__((used)) static inline void xfs_sb_version_addquota(struct xfs_sb *sbp)
{
 sbp->sb_versionnum |= XFS_SB_VERSION_QUOTABIT;
}
