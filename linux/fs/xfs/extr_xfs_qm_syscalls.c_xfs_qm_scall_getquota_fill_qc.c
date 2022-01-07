
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {scalar_t__ d_flags; scalar_t__ d_id; int d_rtbwarns; int d_rtbtimer; int d_rtb_softlimit; int d_rtb_hardlimit; int d_bwarns; int d_iwarns; int d_itimer; int d_btimer; int d_ino_softlimit; int d_ino_hardlimit; int d_blk_softlimit; int d_blk_hardlimit; } ;
struct xfs_dquot {void* q_res_bcount; scalar_t__ q_res_icount; void* q_res_rtbcount; TYPE_1__ q_core; } ;
struct qc_dqblk {scalar_t__ d_spc_softlimit; scalar_t__ d_ino_softlimit; scalar_t__ d_space; scalar_t__ d_ino_count; scalar_t__ d_spc_timer; scalar_t__ d_ino_timer; void* d_rt_spc_timer; void* d_rt_spc_warns; void* d_rt_space; void* d_rt_spc_softlimit; void* d_rt_spc_hardlimit; void* d_spc_warns; void* d_ino_warns; void* d_ino_hardlimit; void* d_spc_hardlimit; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_DQ_GROUP ;
 scalar_t__ XFS_DQ_PROJ ;
 scalar_t__ XFS_DQ_USER ;
 void* XFS_FSB_TO_B (struct xfs_mount*,void*) ;
 scalar_t__ XFS_IS_GQUOTA_ENFORCED (struct xfs_mount*) ;
 scalar_t__ XFS_IS_PQUOTA_ENFORCED (struct xfs_mount*) ;
 scalar_t__ XFS_IS_UQUOTA_ENFORCED (struct xfs_mount*) ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 void* be64_to_cpu (int ) ;
 int memset (struct qc_dqblk*,int ,int) ;

__attribute__((used)) static void
xfs_qm_scall_getquota_fill_qc(
 struct xfs_mount *mp,
 uint type,
 const struct xfs_dquot *dqp,
 struct qc_dqblk *dst)
{
 memset(dst, 0, sizeof(*dst));
 dst->d_spc_hardlimit =
  XFS_FSB_TO_B(mp, be64_to_cpu(dqp->q_core.d_blk_hardlimit));
 dst->d_spc_softlimit =
  XFS_FSB_TO_B(mp, be64_to_cpu(dqp->q_core.d_blk_softlimit));
 dst->d_ino_hardlimit = be64_to_cpu(dqp->q_core.d_ino_hardlimit);
 dst->d_ino_softlimit = be64_to_cpu(dqp->q_core.d_ino_softlimit);
 dst->d_space = XFS_FSB_TO_B(mp, dqp->q_res_bcount);
 dst->d_ino_count = dqp->q_res_icount;
 dst->d_spc_timer = be32_to_cpu(dqp->q_core.d_btimer);
 dst->d_ino_timer = be32_to_cpu(dqp->q_core.d_itimer);
 dst->d_ino_warns = be16_to_cpu(dqp->q_core.d_iwarns);
 dst->d_spc_warns = be16_to_cpu(dqp->q_core.d_bwarns);
 dst->d_rt_spc_hardlimit =
  XFS_FSB_TO_B(mp, be64_to_cpu(dqp->q_core.d_rtb_hardlimit));
 dst->d_rt_spc_softlimit =
  XFS_FSB_TO_B(mp, be64_to_cpu(dqp->q_core.d_rtb_softlimit));
 dst->d_rt_space = XFS_FSB_TO_B(mp, dqp->q_res_rtbcount);
 dst->d_rt_spc_timer = be32_to_cpu(dqp->q_core.d_rtbtimer);
 dst->d_rt_spc_warns = be16_to_cpu(dqp->q_core.d_rtbwarns);






 if ((!XFS_IS_UQUOTA_ENFORCED(mp) &&
      dqp->q_core.d_flags == XFS_DQ_USER) ||
     (!XFS_IS_GQUOTA_ENFORCED(mp) &&
      dqp->q_core.d_flags == XFS_DQ_GROUP) ||
     (!XFS_IS_PQUOTA_ENFORCED(mp) &&
      dqp->q_core.d_flags == XFS_DQ_PROJ)) {
  dst->d_spc_timer = 0;
  dst->d_ino_timer = 0;
  dst->d_rt_spc_timer = 0;
 }
}
