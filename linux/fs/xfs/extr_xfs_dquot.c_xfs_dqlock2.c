
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int d_id; } ;
struct TYPE_6__ {int q_qlock; TYPE_1__ q_core; } ;
typedef TYPE_2__ xfs_dquot_t ;


 int ASSERT (int) ;
 int XFS_QLOCK_NESTED ;
 scalar_t__ be32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_lock_nested (int *,int ) ;

void
xfs_dqlock2(
 xfs_dquot_t *d1,
 xfs_dquot_t *d2)
{
 if (d1 && d2) {
  ASSERT(d1 != d2);
  if (be32_to_cpu(d1->q_core.d_id) >
      be32_to_cpu(d2->q_core.d_id)) {
   mutex_lock(&d2->q_qlock);
   mutex_lock_nested(&d1->q_qlock, XFS_QLOCK_NESTED);
  } else {
   mutex_lock(&d1->q_qlock);
   mutex_lock_nested(&d2->q_qlock, XFS_QLOCK_NESTED);
  }
 } else if (d1) {
  mutex_lock(&d1->q_qlock);
 } else if (d2) {
  mutex_lock(&d2->q_qlock);
 }
}
