
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_trans {int dummy; } ;
struct TYPE_2__ {scalar_t__ li_type; int li_flags; } ;
struct xfs_buf_log_item {scalar_t__ bli_recur; int bli_flags; TYPE_1__ bli_item; int bli_refcount; } ;
struct xfs_buf {struct xfs_trans* b_transp; struct xfs_buf_log_item* b_log_item; } ;


 int ASSERT (int) ;
 int XFS_BLI_HOLD ;
 int XFS_BLI_LOGGED ;
 int XFS_BLI_STALE ;
 scalar_t__ XFS_LI_BUF ;
 int XFS_LI_DIRTY ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_xfs_trans_brelse (struct xfs_buf_log_item*) ;
 int xfs_buf_item_put (struct xfs_buf_log_item*) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_trans_del_item (TYPE_1__*) ;

void
xfs_trans_brelse(
 struct xfs_trans *tp,
 struct xfs_buf *bp)
{
 struct xfs_buf_log_item *bip = bp->b_log_item;

 ASSERT(bp->b_transp == tp);

 if (!tp) {
  xfs_buf_relse(bp);
  return;
 }

 trace_xfs_trans_brelse(bip);
 ASSERT(bip->bli_item.li_type == XFS_LI_BUF);
 ASSERT(atomic_read(&bip->bli_refcount) > 0);





 if (bip->bli_recur > 0) {
  bip->bli_recur--;
  return;
 }





 if (test_bit(XFS_LI_DIRTY, &bip->bli_item.li_flags))
  return;
 if (bip->bli_flags & XFS_BLI_STALE)
  return;





 ASSERT(!(bip->bli_flags & XFS_BLI_LOGGED));
 xfs_trans_del_item(&bip->bli_item);
 bip->bli_flags &= ~XFS_BLI_HOLD;


 xfs_buf_item_put(bip);

 bp->b_transp = ((void*)0);
 xfs_buf_relse(bp);
}
