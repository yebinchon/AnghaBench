
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_mount {int m_quotainfo; } ;


 int ASSERT (int ) ;
 int XFS_AGITER_INEW_WAIT ;
 int xfs_dqrele_inode ;
 int xfs_inode_ag_iterator_flags (struct xfs_mount*,int ,int ,int *,int ) ;

void
xfs_qm_dqrele_all_inodes(
 struct xfs_mount *mp,
 uint flags)
{
 ASSERT(mp->m_quotainfo);
 xfs_inode_ag_iterator_flags(mp, xfs_dqrele_inode, flags, ((void*)0),
        XFS_AGITER_INEW_WAIT);
}
