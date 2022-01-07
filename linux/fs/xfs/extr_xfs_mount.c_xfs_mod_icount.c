
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_icount; } ;
typedef int int64_t ;


 int ASSERT (int ) ;
 int EINVAL ;
 int XFS_ICOUNT_BATCH ;
 scalar_t__ __percpu_counter_compare (int *,int ,int ) ;
 int percpu_counter_add (int *,int ) ;
 int percpu_counter_add_batch (int *,int ,int ) ;

int
xfs_mod_icount(
 struct xfs_mount *mp,
 int64_t delta)
{
 percpu_counter_add_batch(&mp->m_icount, delta, XFS_ICOUNT_BATCH);
 if (__percpu_counter_compare(&mp->m_icount, 0, XFS_ICOUNT_BATCH) < 0) {
  ASSERT(0);
  percpu_counter_add(&mp->m_icount, -delta);
  return -EINVAL;
 }
 return 0;
}
