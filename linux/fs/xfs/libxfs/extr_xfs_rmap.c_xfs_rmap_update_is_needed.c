
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_sb; } ;


 int XFS_COW_FORK ;
 scalar_t__ xfs_sb_version_hasrmapbt (int *) ;

__attribute__((used)) static bool
xfs_rmap_update_is_needed(
 struct xfs_mount *mp,
 int whichfork)
{
 return xfs_sb_version_hasrmapbt(&mp->m_sb) && whichfork != XFS_COW_FORK;
}
