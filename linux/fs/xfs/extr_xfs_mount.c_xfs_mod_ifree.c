
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_ifree; } ;
typedef int int64_t ;


 int ASSERT (int ) ;
 int EINVAL ;
 int percpu_counter_add (int *,int ) ;
 scalar_t__ percpu_counter_compare (int *,int ) ;

int
xfs_mod_ifree(
 struct xfs_mount *mp,
 int64_t delta)
{
 percpu_counter_add(&mp->m_ifree, delta);
 if (percpu_counter_compare(&mp->m_ifree, 0) < 0) {
  ASSERT(0);
  percpu_counter_add(&mp->m_ifree, -delta);
  return -EINVAL;
 }
 return 0;
}
