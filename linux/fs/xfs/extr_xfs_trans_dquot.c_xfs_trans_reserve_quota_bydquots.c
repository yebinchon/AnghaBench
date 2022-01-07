
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_trans {int * t_dqinfo; } ;
struct xfs_mount {int dummy; } ;
struct xfs_dquot {int dummy; } ;
typedef int int64_t ;


 int ASSERT (int) ;
 int XFS_IS_QUOTA_ON (struct xfs_mount*) ;
 int XFS_IS_QUOTA_RUNNING (struct xfs_mount*) ;
 int XFS_QMOPT_ENOSPC ;
 int XFS_QMOPT_FORCE_RES ;
 int XFS_QMOPT_RESBLK_MASK ;
 int xfs_trans_alloc_dqinfo (struct xfs_trans*) ;
 int xfs_trans_dqresv (struct xfs_trans*,struct xfs_mount*,struct xfs_dquot*,int ,long,int) ;

int
xfs_trans_reserve_quota_bydquots(
 struct xfs_trans *tp,
 struct xfs_mount *mp,
 struct xfs_dquot *udqp,
 struct xfs_dquot *gdqp,
 struct xfs_dquot *pdqp,
 int64_t nblks,
 long ninos,
 uint flags)
{
 int error;

 if (!XFS_IS_QUOTA_RUNNING(mp) || !XFS_IS_QUOTA_ON(mp))
  return 0;

 if (tp && tp->t_dqinfo == ((void*)0))
  xfs_trans_alloc_dqinfo(tp);

 ASSERT(flags & XFS_QMOPT_RESBLK_MASK);

 if (udqp) {
  error = xfs_trans_dqresv(tp, mp, udqp, nblks, ninos,
     (flags & ~XFS_QMOPT_ENOSPC));
  if (error)
   return error;
 }

 if (gdqp) {
  error = xfs_trans_dqresv(tp, mp, gdqp, nblks, ninos, flags);
  if (error)
   goto unwind_usr;
 }

 if (pdqp) {
  error = xfs_trans_dqresv(tp, mp, pdqp, nblks, ninos, flags);
  if (error)
   goto unwind_grp;
 }




 return 0;

unwind_grp:
 flags |= XFS_QMOPT_FORCE_RES;
 if (gdqp)
  xfs_trans_dqresv(tp, mp, gdqp, -nblks, -ninos, flags);
unwind_usr:
 flags |= XFS_QMOPT_FORCE_RES;
 if (udqp)
  xfs_trans_dqresv(tp, mp, udqp, -nblks, -ninos, flags);
 return error;
}
