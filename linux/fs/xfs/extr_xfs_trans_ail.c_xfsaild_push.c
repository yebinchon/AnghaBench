
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_mount_t ;
typedef void* xfs_lsn_t ;
struct xfs_log_item {void* li_lsn; } ;
struct xfs_ail_cursor {int dummy; } ;
struct xfs_ail {void* ail_last_pushed_lsn; scalar_t__ ail_log_flush; int ail_buf_list; int ail_lock; void* ail_target_prev; void* ail_target; int * ail_mount; } ;


 int ASSERT (int ) ;




 int XFS_LOG_SYNC ;
 scalar_t__ XFS_LSN_CMP (void*,void*) ;
 int XFS_STATS_INC (int *,int ) ;
 int list_empty_careful (int *) ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xfs_ail_flushing (struct xfs_log_item*) ;
 int trace_xfs_ail_locked (struct xfs_log_item*) ;
 int trace_xfs_ail_pinned (struct xfs_log_item*) ;
 int trace_xfs_ail_push (struct xfs_log_item*) ;
 scalar_t__ xfs_ail_min_lsn (struct xfs_ail*) ;
 scalar_t__ xfs_buf_delwri_submit_nowait (int *) ;
 int xfs_log_force (int *,int ) ;
 int xfs_trans_ail_cursor_done (struct xfs_ail_cursor*) ;
 struct xfs_log_item* xfs_trans_ail_cursor_first (struct xfs_ail*,struct xfs_ail_cursor*,void*) ;
 struct xfs_log_item* xfs_trans_ail_cursor_next (struct xfs_ail*,struct xfs_ail_cursor*) ;
 int xfsaild_push_item (struct xfs_ail*,struct xfs_log_item*) ;
 int xs_push_ail ;
 int xs_push_ail_flush ;
 int xs_push_ail_flushing ;
 int xs_push_ail_locked ;
 int xs_push_ail_pinned ;
 int xs_push_ail_success ;

__attribute__((used)) static long
xfsaild_push(
 struct xfs_ail *ailp)
{
 xfs_mount_t *mp = ailp->ail_mount;
 struct xfs_ail_cursor cur;
 struct xfs_log_item *lip;
 xfs_lsn_t lsn;
 xfs_lsn_t target;
 long tout;
 int stuck = 0;
 int flushing = 0;
 int count = 0;






 if (ailp->ail_log_flush && ailp->ail_last_pushed_lsn == 0 &&
     (!list_empty_careful(&ailp->ail_buf_list) ||
      xfs_ail_min_lsn(ailp))) {
  ailp->ail_log_flush = 0;

  XFS_STATS_INC(mp, xs_push_ail_flush);
  xfs_log_force(mp, XFS_LOG_SYNC);
 }

 spin_lock(&ailp->ail_lock);


 smp_rmb();
 target = ailp->ail_target;
 ailp->ail_target_prev = target;

 lip = xfs_trans_ail_cursor_first(ailp, &cur, ailp->ail_last_pushed_lsn);
 if (!lip) {




  xfs_trans_ail_cursor_done(&cur);
  spin_unlock(&ailp->ail_lock);
  goto out_done;
 }

 XFS_STATS_INC(mp, xs_push_ail);

 lsn = lip->li_lsn;
 while ((XFS_LSN_CMP(lip->li_lsn, target) <= 0)) {
  int lock_result;






  lock_result = xfsaild_push_item(ailp, lip);
  switch (lock_result) {
  case 128:
   XFS_STATS_INC(mp, xs_push_ail_success);
   trace_xfs_ail_push(lip);

   ailp->ail_last_pushed_lsn = lsn;
   break;

  case 131:
   XFS_STATS_INC(mp, xs_push_ail_flushing);
   trace_xfs_ail_flushing(lip);

   flushing++;
   ailp->ail_last_pushed_lsn = lsn;
   break;

  case 129:
   XFS_STATS_INC(mp, xs_push_ail_pinned);
   trace_xfs_ail_pinned(lip);

   stuck++;
   ailp->ail_log_flush++;
   break;
  case 130:
   XFS_STATS_INC(mp, xs_push_ail_locked);
   trace_xfs_ail_locked(lip);

   stuck++;
   break;
  default:
   ASSERT(0);
   break;
  }

  count++;
  if (stuck > 100)
   break;

  lip = xfs_trans_ail_cursor_next(ailp, &cur);
  if (lip == ((void*)0))
   break;
  lsn = lip->li_lsn;
 }
 xfs_trans_ail_cursor_done(&cur);
 spin_unlock(&ailp->ail_lock);

 if (xfs_buf_delwri_submit_nowait(&ailp->ail_buf_list))
  ailp->ail_log_flush++;

 if (!count || XFS_LSN_CMP(lsn, target) >= 0) {
out_done:





  tout = 50;
  ailp->ail_last_pushed_lsn = 0;
 } else if (((stuck + flushing) * 100) / count > 90) {
  tout = 20;
  ailp->ail_last_pushed_lsn = 0;
 } else {



  tout = 10;
 }

 return tout;
}
