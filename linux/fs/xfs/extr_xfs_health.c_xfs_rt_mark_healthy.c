
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {unsigned int m_rt_sick; unsigned int m_rt_checked; int m_sb_lock; } ;


 int ASSERT (int) ;
 unsigned int XFS_SICK_RT_PRIMARY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_rt_mark_healthy (struct xfs_mount*,unsigned int) ;

void
xfs_rt_mark_healthy(
 struct xfs_mount *mp,
 unsigned int mask)
{
 ASSERT(!(mask & ~XFS_SICK_RT_PRIMARY));
 trace_xfs_rt_mark_healthy(mp, mask);

 spin_lock(&mp->m_sb_lock);
 mp->m_rt_sick &= ~mask;
 mp->m_rt_checked |= mask;
 spin_unlock(&mp->m_sb_lock);
}
