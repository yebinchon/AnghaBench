
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {unsigned int m_fs_sick; unsigned int m_fs_checked; int m_sb_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
xfs_fs_measure_sickness(
 struct xfs_mount *mp,
 unsigned int *sick,
 unsigned int *checked)
{
 spin_lock(&mp->m_sb_lock);
 *sick = mp->m_fs_sick;
 *checked = mp->m_fs_checked;
 spin_unlock(&mp->m_sb_lock);
}
