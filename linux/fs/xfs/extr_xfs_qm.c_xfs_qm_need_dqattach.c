
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_sb; } ;
struct xfs_inode {int i_ino; struct xfs_mount* i_mount; } ;


 int XFS_IS_QUOTA_ON (struct xfs_mount*) ;
 int XFS_IS_QUOTA_RUNNING (struct xfs_mount*) ;
 int XFS_NOT_DQATTACHED (struct xfs_mount*,struct xfs_inode*) ;
 scalar_t__ xfs_is_quota_inode (int *,int ) ;

__attribute__((used)) static bool
xfs_qm_need_dqattach(
 struct xfs_inode *ip)
{
 struct xfs_mount *mp = ip->i_mount;

 if (!XFS_IS_QUOTA_RUNNING(mp))
  return 0;
 if (!XFS_IS_QUOTA_ON(mp))
  return 0;
 if (!XFS_NOT_DQATTACHED(mp, ip))
  return 0;
 if (xfs_is_quota_inode(&mp->m_sb, ip->i_ino))
  return 0;
 return 1;
}
