
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sb_frextents; } ;
struct TYPE_7__ {void* m_alloc_set_aside; int m_sb_lock; TYPE_1__ m_sb; int m_fdblocks; int m_ifree; int m_icount; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_8__ {int freertx; void* freedata; void* freeino; void* allocino; } ;
typedef TYPE_3__ xfs_fsop_counts_t ;


 void* percpu_counter_read_positive (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
xfs_fs_counts(
 xfs_mount_t *mp,
 xfs_fsop_counts_t *cnt)
{
 cnt->allocino = percpu_counter_read_positive(&mp->m_icount);
 cnt->freeino = percpu_counter_read_positive(&mp->m_ifree);
 cnt->freedata = percpu_counter_read_positive(&mp->m_fdblocks) -
      mp->m_alloc_set_aside;

 spin_lock(&mp->m_sb_lock);
 cnt->freertx = mp->m_sb.sb_frextents;
 spin_unlock(&mp->m_sb_lock);
}
