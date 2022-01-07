
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d_blk_hardlimit; } ;
struct xfs_dquot {scalar_t__ q_res_bcount; scalar_t__* q_low_space; TYPE_1__ q_core; } ;
typedef scalar_t__ int64_t ;


 size_t XFS_QLOWSP_1_PCNT ;
 scalar_t__ be64_to_cpu (int ) ;

__attribute__((used)) static inline bool xfs_dquot_lowsp(struct xfs_dquot *dqp)
{
 int64_t freesp;

 freesp = be64_to_cpu(dqp->q_core.d_blk_hardlimit) - dqp->q_res_bcount;
 if (freesp < dqp->q_low_space[XFS_QLOWSP_1_PCNT])
  return 1;

 return 0;
}
