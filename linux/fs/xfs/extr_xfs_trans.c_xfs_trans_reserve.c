
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct xfs_trans_res {scalar_t__ tr_logres; scalar_t__ tr_logcount; int tr_logflags; } ;
struct xfs_trans {int t_flags; scalar_t__ t_blk_res; scalar_t__ t_log_res; scalar_t__ t_log_count; int t_pflags; int t_mountp; int * t_ticket; int t_rtx_res; } ;
typedef int int64_t ;


 int ASSERT (int) ;
 int ENOSPC ;
 int PF_MEMALLOC_NOFS ;
 int XFS_TRANSACTION ;
 int XFS_TRANS_PERM_LOG_RES ;
 int XFS_TRANS_RESERVE ;
 int current_restore_flags_nested (int *,int ) ;
 int current_set_flags_nested (int *,int ) ;
 int xfs_log_done (int ,int *,int *,int) ;
 int xfs_log_regrant (int ,int *) ;
 int xfs_log_reserve (int ,scalar_t__,scalar_t__,int **,int ,int) ;
 int xfs_mod_fdblocks (int ,int ,int) ;
 int xfs_mod_frextents (int ,int ) ;

__attribute__((used)) static int
xfs_trans_reserve(
 struct xfs_trans *tp,
 struct xfs_trans_res *resp,
 uint blocks,
 uint rtextents)
{
 int error = 0;
 bool rsvd = (tp->t_flags & XFS_TRANS_RESERVE) != 0;


 current_set_flags_nested(&tp->t_pflags, PF_MEMALLOC_NOFS);






 if (blocks > 0) {
  error = xfs_mod_fdblocks(tp->t_mountp, -((int64_t)blocks), rsvd);
  if (error != 0) {
   current_restore_flags_nested(&tp->t_pflags, PF_MEMALLOC_NOFS);
   return -ENOSPC;
  }
  tp->t_blk_res += blocks;
 }




 if (resp->tr_logres > 0) {
  bool permanent = 0;

  ASSERT(tp->t_log_res == 0 ||
         tp->t_log_res == resp->tr_logres);
  ASSERT(tp->t_log_count == 0 ||
         tp->t_log_count == resp->tr_logcount);

  if (resp->tr_logflags & XFS_TRANS_PERM_LOG_RES) {
   tp->t_flags |= XFS_TRANS_PERM_LOG_RES;
   permanent = 1;
  } else {
   ASSERT(tp->t_ticket == ((void*)0));
   ASSERT(!(tp->t_flags & XFS_TRANS_PERM_LOG_RES));
  }

  if (tp->t_ticket != ((void*)0)) {
   ASSERT(resp->tr_logflags & XFS_TRANS_PERM_LOG_RES);
   error = xfs_log_regrant(tp->t_mountp, tp->t_ticket);
  } else {
   error = xfs_log_reserve(tp->t_mountp,
      resp->tr_logres,
      resp->tr_logcount,
      &tp->t_ticket, XFS_TRANSACTION,
      permanent);
  }

  if (error)
   goto undo_blocks;

  tp->t_log_res = resp->tr_logres;
  tp->t_log_count = resp->tr_logcount;
 }






 if (rtextents > 0) {
  error = xfs_mod_frextents(tp->t_mountp, -((int64_t)rtextents));
  if (error) {
   error = -ENOSPC;
   goto undo_log;
  }
  tp->t_rtx_res += rtextents;
 }

 return 0;





undo_log:
 if (resp->tr_logres > 0) {
  xfs_log_done(tp->t_mountp, tp->t_ticket, ((void*)0), 0);
  tp->t_ticket = ((void*)0);
  tp->t_log_res = 0;
  tp->t_flags &= ~XFS_TRANS_PERM_LOG_RES;
 }

undo_blocks:
 if (blocks > 0) {
  xfs_mod_fdblocks(tp->t_mountp, (int64_t)blocks, rsvd);
  tp->t_blk_res = 0;
 }

 current_restore_flags_nested(&tp->t_pflags, PF_MEMALLOC_NOFS);

 return error;
}
