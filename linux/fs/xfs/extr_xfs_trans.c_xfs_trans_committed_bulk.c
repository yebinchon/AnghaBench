
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_lsn_t ;
struct xfs_log_vec {struct xfs_log_item* lv_item; struct xfs_log_vec* lv_next; } ;
struct xfs_log_item {TYPE_1__* li_ops; int li_lsn; int li_flags; } ;
struct xfs_ail_cursor {int dummy; } ;
struct xfs_ail {int ail_lock; int ail_mount; } ;
struct TYPE_2__ {int flags; int (* iop_unpin ) (struct xfs_log_item*,int) ;int (* iop_committed ) (struct xfs_log_item*,int ) ;int (* iop_release ) (struct xfs_log_item*) ;} ;


 int ASSERT (int ) ;
 int LOG_ITEM_BATCH_SIZE ;
 int XFS_FORCED_SHUTDOWN (int ) ;
 int XFS_ITEM_RELEASE_WHEN_COMMITTED ;
 int XFS_LI_ABORTED ;
 scalar_t__ XFS_LSN_CMP (int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct xfs_log_item*) ;
 int stub2 (struct xfs_log_item*,int ) ;
 int stub3 (struct xfs_log_item*,int) ;
 int stub4 (struct xfs_log_item*,int) ;
 int xfs_log_item_batch_insert (struct xfs_ail*,struct xfs_ail_cursor*,struct xfs_log_item**,int,int ) ;
 int xfs_trans_ail_cursor_done (struct xfs_ail_cursor*) ;
 int xfs_trans_ail_cursor_last (struct xfs_ail*,struct xfs_ail_cursor*,int ) ;
 int xfs_trans_ail_update (struct xfs_ail*,struct xfs_log_item*,int ) ;

void
xfs_trans_committed_bulk(
 struct xfs_ail *ailp,
 struct xfs_log_vec *log_vector,
 xfs_lsn_t commit_lsn,
 bool aborted)
{

 struct xfs_log_item *log_items[32];
 struct xfs_log_vec *lv;
 struct xfs_ail_cursor cur;
 int i = 0;

 spin_lock(&ailp->ail_lock);
 xfs_trans_ail_cursor_last(ailp, &cur, commit_lsn);
 spin_unlock(&ailp->ail_lock);


 for (lv = log_vector; lv; lv = lv->lv_next ) {
  struct xfs_log_item *lip = lv->lv_item;
  xfs_lsn_t item_lsn;

  if (aborted)
   set_bit(XFS_LI_ABORTED, &lip->li_flags);

  if (lip->li_ops->flags & XFS_ITEM_RELEASE_WHEN_COMMITTED) {
   lip->li_ops->iop_release(lip);
   continue;
  }

  if (lip->li_ops->iop_committed)
   item_lsn = lip->li_ops->iop_committed(lip, commit_lsn);
  else
   item_lsn = commit_lsn;


  if (XFS_LSN_CMP(item_lsn, (xfs_lsn_t)-1) == 0)
   continue;





  if (aborted) {
   ASSERT(XFS_FORCED_SHUTDOWN(ailp->ail_mount));
   if (lip->li_ops->iop_unpin)
    lip->li_ops->iop_unpin(lip, 1);
   continue;
  }

  if (item_lsn != commit_lsn) {
   spin_lock(&ailp->ail_lock);
   if (XFS_LSN_CMP(item_lsn, lip->li_lsn) > 0)
    xfs_trans_ail_update(ailp, lip, item_lsn);
   else
    spin_unlock(&ailp->ail_lock);
   if (lip->li_ops->iop_unpin)
    lip->li_ops->iop_unpin(lip, 0);
   continue;
  }


  log_items[i++] = lv->lv_item;
  if (i >= 32) {
   xfs_log_item_batch_insert(ailp, &cur, log_items,
     32, commit_lsn);
   i = 0;
  }
 }


 if (i)
  xfs_log_item_batch_insert(ailp, &cur, log_items, i, commit_lsn);

 spin_lock(&ailp->ail_lock);
 xfs_trans_ail_cursor_done(&cur);
 spin_unlock(&ailp->ail_lock);
}
