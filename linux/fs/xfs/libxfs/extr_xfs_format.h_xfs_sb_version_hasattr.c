
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {int sb_versionnum; } ;


 int XFS_SB_VERSION_ATTRBIT ;

__attribute__((used)) static inline bool xfs_sb_version_hasattr(struct xfs_sb *sbp)
{
 return (sbp->sb_versionnum & XFS_SB_VERSION_ATTRBIT);
}
