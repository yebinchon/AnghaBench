
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_mount {int dummy; } ;


 int XFS_DQ_GROUP ;
 int XFS_DQ_PROJ ;
 int XFS_DQ_USER ;
 int XFS_QMOPT_GQUOTA ;
 int XFS_QMOPT_PQUOTA ;
 int XFS_QMOPT_UQUOTA ;
 int xfs_qm_dqpurge ;
 int xfs_qm_dquot_walk (struct xfs_mount*,int ,int ,int *) ;

void
xfs_qm_dqpurge_all(
 struct xfs_mount *mp,
 uint flags)
{
 if (flags & XFS_QMOPT_UQUOTA)
  xfs_qm_dquot_walk(mp, XFS_DQ_USER, xfs_qm_dqpurge, ((void*)0));
 if (flags & XFS_QMOPT_GQUOTA)
  xfs_qm_dquot_walk(mp, XFS_DQ_GROUP, xfs_qm_dqpurge, ((void*)0));
 if (flags & XFS_QMOPT_PQUOTA)
  xfs_qm_dquot_walk(mp, XFS_DQ_PROJ, xfs_qm_dqpurge, ((void*)0));
}
