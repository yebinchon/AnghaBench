
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_dqid_t ;
typedef int uint ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {int d_id; } ;
struct xfs_dquot {TYPE_1__ q_core; } ;
struct qc_dqblk {int dummy; } ;


 int be32_to_cpu (int ) ;
 int xfs_qm_dqget_next (struct xfs_mount*,int ,int ,struct xfs_dquot**) ;
 int xfs_qm_dqput (struct xfs_dquot*) ;
 int xfs_qm_scall_getquota_fill_qc (struct xfs_mount*,int ,struct xfs_dquot*,struct qc_dqblk*) ;

int
xfs_qm_scall_getquota_next(
 struct xfs_mount *mp,
 xfs_dqid_t *id,
 uint type,
 struct qc_dqblk *dst)
{
 struct xfs_dquot *dqp;
 int error;

 error = xfs_qm_dqget_next(mp, *id, type, &dqp);
 if (error)
  return error;


 *id = be32_to_cpu(dqp->q_core.d_id);

 xfs_qm_scall_getquota_fill_qc(mp, type, dqp, dst);

 xfs_qm_dqput(dqp);
 return error;
}
