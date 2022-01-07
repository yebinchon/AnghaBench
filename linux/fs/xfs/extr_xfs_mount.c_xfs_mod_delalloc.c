
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_delalloc_blks; } ;
typedef int int64_t ;


 int XFS_DELALLOC_BATCH ;
 int percpu_counter_add_batch (int *,int ,int ) ;

void
xfs_mod_delalloc(
 struct xfs_mount *mp,
 int64_t delta)
{
 percpu_counter_add_batch(&mp->m_delalloc_blks, delta,
   XFS_DELALLOC_BATCH);
}
