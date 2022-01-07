
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_delalloc_blks; int m_fdblocks; int m_ifree; int m_icount; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (struct xfs_mount*) ;
 int percpu_counter_destroy (int *) ;
 scalar_t__ percpu_counter_sum (int *) ;

__attribute__((used)) static void
xfs_destroy_percpu_counters(
 struct xfs_mount *mp)
{
 percpu_counter_destroy(&mp->m_icount);
 percpu_counter_destroy(&mp->m_ifree);
 percpu_counter_destroy(&mp->m_fdblocks);
 ASSERT(XFS_FORCED_SHUTDOWN(mp) ||
        percpu_counter_sum(&mp->m_delalloc_blks) == 0);
 percpu_counter_destroy(&mp->m_delalloc_blks);
}
