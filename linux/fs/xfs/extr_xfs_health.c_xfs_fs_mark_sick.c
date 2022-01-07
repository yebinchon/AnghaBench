
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {unsigned int m_fs_sick; unsigned int m_fs_checked; int m_sb_lock; } ;


 int ASSERT (int) ;
 unsigned int XFS_SICK_FS_PRIMARY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_fs_mark_sick (struct xfs_mount*,unsigned int) ;

void
xfs_fs_mark_sick(
 struct xfs_mount *mp,
 unsigned int mask)
{
 ASSERT(!(mask & ~XFS_SICK_FS_PRIMARY));
 trace_xfs_fs_mark_sick(mp, mask);

 spin_lock(&mp->m_sb_lock);
 mp->m_fs_sick |= mask;
 mp->m_fs_checked |= mask;
 spin_unlock(&mp->m_sb_lock);
}
