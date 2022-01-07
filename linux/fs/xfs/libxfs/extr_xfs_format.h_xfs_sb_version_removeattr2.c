
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {int sb_versionnum; int sb_features2; } ;


 int XFS_SB_VERSION2_ATTR2BIT ;
 int XFS_SB_VERSION_MOREBITSBIT ;

__attribute__((used)) static inline void xfs_sb_version_removeattr2(struct xfs_sb *sbp)
{
 sbp->sb_features2 &= ~XFS_SB_VERSION2_ATTR2BIT;
 if (!sbp->sb_features2)
  sbp->sb_versionnum &= ~XFS_SB_VERSION_MOREBITSBIT;
}
