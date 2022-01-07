
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dqid_t ;
typedef int uint ;
struct xfs_mount {int dummy; } ;
struct xfs_dquot {int dummy; } ;


 int ENOENT ;
 int XFS_IS_DQUOT_UNINITIALIZED (struct xfs_dquot*) ;
 int xfs_dq_get_next_id (struct xfs_mount*,int ,int *) ;
 int xfs_qm_dqget (struct xfs_mount*,int ,int ,int,struct xfs_dquot**) ;
 int xfs_qm_dqput (struct xfs_dquot*) ;

int
xfs_qm_dqget_next(
 struct xfs_mount *mp,
 xfs_dqid_t id,
 uint type,
 struct xfs_dquot **dqpp)
{
 struct xfs_dquot *dqp;
 int error = 0;

 *dqpp = ((void*)0);
 for (; !error; error = xfs_dq_get_next_id(mp, type, &id)) {
  error = xfs_qm_dqget(mp, id, type, 0, &dqp);
  if (error == -ENOENT)
   continue;
  else if (error != 0)
   break;

  if (!XFS_IS_DQUOT_UNINITIALIZED(dqp)) {
   *dqpp = dqp;
   return 0;
  }

  xfs_qm_dqput(dqp);
 }

 return error;
}
