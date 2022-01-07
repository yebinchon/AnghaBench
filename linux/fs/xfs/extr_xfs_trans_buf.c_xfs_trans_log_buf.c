
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_trans {int dummy; } ;
struct xfs_buf_log_item {int bli_flags; } ;
struct xfs_buf {int b_length; struct xfs_buf_log_item* b_log_item; } ;


 int ASSERT (int) ;
 int BBTOB (int ) ;
 int XFS_BLI_ORDERED ;
 int trace_xfs_trans_log_buf (struct xfs_buf_log_item*) ;
 int xfs_buf_item_log (struct xfs_buf_log_item*,int ,int ) ;
 int xfs_trans_dirty_buf (struct xfs_trans*,struct xfs_buf*) ;

void
xfs_trans_log_buf(
 struct xfs_trans *tp,
 struct xfs_buf *bp,
 uint first,
 uint last)
{
 struct xfs_buf_log_item *bip = bp->b_log_item;

 ASSERT(first <= last && last < BBTOB(bp->b_length));
 ASSERT(!(bip->bli_flags & XFS_BLI_ORDERED));

 xfs_trans_dirty_buf(tp, bp);

 trace_xfs_trans_log_buf(bip);
 xfs_buf_item_log(bip, first, last);
}
