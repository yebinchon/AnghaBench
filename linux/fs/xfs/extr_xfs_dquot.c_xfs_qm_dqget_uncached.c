
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dqid_t ;
typedef int uint ;
struct xfs_mount {int dummy; } ;
struct xfs_dquot {int dummy; } ;


 int xfs_qm_dqget_checks (struct xfs_mount*,int ) ;
 int xfs_qm_dqread (struct xfs_mount*,int ,int ,int ,struct xfs_dquot**) ;

int
xfs_qm_dqget_uncached(
 struct xfs_mount *mp,
 xfs_dqid_t id,
 uint type,
 struct xfs_dquot **dqpp)
{
 int error;

 error = xfs_qm_dqget_checks(mp, type);
 if (error)
  return error;

 return xfs_qm_dqread(mp, id, type, 0, dqpp);
}
