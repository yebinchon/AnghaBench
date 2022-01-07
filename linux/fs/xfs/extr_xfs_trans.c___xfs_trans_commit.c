
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_lsn_t ;
struct xfs_trans {int t_flags; int t_pflags; int * t_ticket; int t_dfops; struct xfs_mount* t_mountp; } ;
struct xfs_mount {int dummy; } ;


 int ASSERT (int ) ;
 int EIO ;
 int PF_MEMALLOC_NOFS ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (struct xfs_mount*) ;
 int XFS_LOG_SYNC ;
 int XFS_STATS_INC (struct xfs_mount*,int ) ;
 int XFS_TRANS_DIRTY ;
 int XFS_TRANS_PERM_LOG_RES ;
 int XFS_TRANS_SB_DIRTY ;
 int XFS_TRANS_SYNC ;
 int _RET_IP_ ;
 int current_restore_flags_nested (int *,int ) ;
 int list_empty (int *) ;
 int trace_xfs_trans_commit (struct xfs_trans*,int ) ;
 int xfs_defer_finish_noroll (struct xfs_trans**) ;
 int xfs_log_commit_cil (struct xfs_mount*,struct xfs_trans*,int*,int) ;
 int xfs_log_done (struct xfs_mount*,int *,int *,int) ;
 int xfs_log_force_lsn (struct xfs_mount*,int,int ,int *) ;
 int xfs_trans_apply_dquot_deltas (struct xfs_trans*) ;
 int xfs_trans_apply_sb_deltas (struct xfs_trans*) ;
 int xfs_trans_free (struct xfs_trans*) ;
 int xfs_trans_free_items (struct xfs_trans*,int) ;
 int xfs_trans_unreserve_and_mod_dquots (struct xfs_trans*) ;
 int xfs_trans_unreserve_and_mod_sb (struct xfs_trans*) ;
 int xs_trans_async ;
 int xs_trans_empty ;
 int xs_trans_sync ;

__attribute__((used)) static int
__xfs_trans_commit(
 struct xfs_trans *tp,
 bool regrant)
{
 struct xfs_mount *mp = tp->t_mountp;
 xfs_lsn_t commit_lsn = -1;
 int error = 0;
 int sync = tp->t_flags & XFS_TRANS_SYNC;

 trace_xfs_trans_commit(tp, _RET_IP_);





 WARN_ON_ONCE(!list_empty(&tp->t_dfops) &&
       !(tp->t_flags & XFS_TRANS_PERM_LOG_RES));
 if (!regrant && (tp->t_flags & XFS_TRANS_PERM_LOG_RES)) {
  error = xfs_defer_finish_noroll(&tp);
  if (error)
   goto out_unreserve;
 }
 if (!(tp->t_flags & XFS_TRANS_DIRTY))
  goto out_unreserve;

 if (XFS_FORCED_SHUTDOWN(mp)) {
  error = -EIO;
  goto out_unreserve;
 }

 ASSERT(tp->t_ticket != ((void*)0));




 if (tp->t_flags & XFS_TRANS_SB_DIRTY)
  xfs_trans_apply_sb_deltas(tp);
 xfs_trans_apply_dquot_deltas(tp);

 xfs_log_commit_cil(mp, tp, &commit_lsn, regrant);

 current_restore_flags_nested(&tp->t_pflags, PF_MEMALLOC_NOFS);
 xfs_trans_free(tp);





 if (sync) {
  error = xfs_log_force_lsn(mp, commit_lsn, XFS_LOG_SYNC, ((void*)0));
  XFS_STATS_INC(mp, xs_trans_sync);
 } else {
  XFS_STATS_INC(mp, xs_trans_async);
 }

 return error;

out_unreserve:
 xfs_trans_unreserve_and_mod_sb(tp);






 xfs_trans_unreserve_and_mod_dquots(tp);
 if (tp->t_ticket) {
  commit_lsn = xfs_log_done(mp, tp->t_ticket, ((void*)0), regrant);
  if (commit_lsn == -1 && !error)
   error = -EIO;
  tp->t_ticket = ((void*)0);
 }
 current_restore_flags_nested(&tp->t_pflags, PF_MEMALLOC_NOFS);
 xfs_trans_free_items(tp, !!error);
 xfs_trans_free(tp);

 XFS_STATS_INC(mp, xs_trans_empty);
 return error;
}
