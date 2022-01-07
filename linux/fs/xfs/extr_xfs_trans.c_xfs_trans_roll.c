
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans_res {int tr_logflags; int tr_logcount; int tr_logres; } ;
struct xfs_trans {int t_log_count; int t_log_res; } ;


 int XFS_TRANS_PERM_LOG_RES ;
 int _RET_IP_ ;
 int __xfs_trans_commit (struct xfs_trans*,int) ;
 int trace_xfs_trans_roll (struct xfs_trans*,int ) ;
 struct xfs_trans* xfs_trans_dup (struct xfs_trans*) ;
 int xfs_trans_reserve (struct xfs_trans*,struct xfs_trans_res*,int ,int ) ;

int
xfs_trans_roll(
 struct xfs_trans **tpp)
{
 struct xfs_trans *trans = *tpp;
 struct xfs_trans_res tres;
 int error;

 trace_xfs_trans_roll(trans, _RET_IP_);




 tres.tr_logres = trans->t_log_res;
 tres.tr_logcount = trans->t_log_count;

 *tpp = xfs_trans_dup(trans);
 error = __xfs_trans_commit(trans, 1);
 if (error)
  return error;
 tres.tr_logflags = XFS_TRANS_PERM_LOG_RES;
 return xfs_trans_reserve(*tpp, &tres, 0, 0);
}
