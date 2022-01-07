
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int d_blk_softlimit; int d_blk_hardlimit; } ;
struct xfs_dquot {int q_prealloc_hi_wmark; int q_prealloc_lo_wmark; int* q_low_space; TYPE_1__ q_core; } ;


 size_t XFS_QLOWSP_1_PCNT ;
 size_t XFS_QLOWSP_3_PCNT ;
 size_t XFS_QLOWSP_5_PCNT ;
 void* be64_to_cpu (int ) ;
 int do_div (int,int) ;

void
xfs_dquot_set_prealloc_limits(struct xfs_dquot *dqp)
{
 uint64_t space;

 dqp->q_prealloc_hi_wmark = be64_to_cpu(dqp->q_core.d_blk_hardlimit);
 dqp->q_prealloc_lo_wmark = be64_to_cpu(dqp->q_core.d_blk_softlimit);
 if (!dqp->q_prealloc_lo_wmark) {
  dqp->q_prealloc_lo_wmark = dqp->q_prealloc_hi_wmark;
  do_div(dqp->q_prealloc_lo_wmark, 100);
  dqp->q_prealloc_lo_wmark *= 95;
 }

 space = dqp->q_prealloc_hi_wmark;

 do_div(space, 100);
 dqp->q_low_space[XFS_QLOWSP_1_PCNT] = space;
 dqp->q_low_space[XFS_QLOWSP_3_PCNT] = space * 3;
 dqp->q_low_space[XFS_QLOWSP_5_PCNT] = space * 5;
}
