
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dqid_t ;
typedef int uint ;
struct xfs_mount {int dummy; } ;
struct xfs_dquot {int dummy; } ;
struct qc_dqblk {int dummy; } ;


 int ENOENT ;
 scalar_t__ XFS_IS_DQUOT_UNINITIALIZED (struct xfs_dquot*) ;
 int xfs_qm_dqget (struct xfs_mount*,int ,int ,int,struct xfs_dquot**) ;
 int xfs_qm_dqput (struct xfs_dquot*) ;
 int xfs_qm_scall_getquota_fill_qc (struct xfs_mount*,int ,struct xfs_dquot*,struct qc_dqblk*) ;

int
xfs_qm_scall_getquota(
 struct xfs_mount *mp,
 xfs_dqid_t id,
 uint type,
 struct qc_dqblk *dst)
{
 struct xfs_dquot *dqp;
 int error;





 error = xfs_qm_dqget(mp, id, type, 0, &dqp);
 if (error)
  return error;





 if (XFS_IS_DQUOT_UNINITIALIZED(dqp)) {
  error = -ENOENT;
  goto out_put;
 }

 xfs_qm_scall_getquota_fill_qc(mp, type, dqp, dst);

out_put:
 xfs_qm_dqput(dqp);
 return error;
}
