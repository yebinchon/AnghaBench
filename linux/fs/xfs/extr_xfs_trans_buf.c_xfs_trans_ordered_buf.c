
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int dummy; } ;
struct xfs_buf_log_item {int bli_flags; int bli_refcount; } ;
struct xfs_buf {struct xfs_trans* b_transp; struct xfs_buf_log_item* b_log_item; } ;


 int ASSERT (int) ;
 int XFS_BLI_ORDERED ;
 scalar_t__ atomic_read (int *) ;
 int trace_xfs_buf_item_ordered (struct xfs_buf_log_item*) ;
 scalar_t__ xfs_buf_item_dirty_format (struct xfs_buf_log_item*) ;
 int xfs_trans_dirty_buf (struct xfs_trans*,struct xfs_buf*) ;

bool
xfs_trans_ordered_buf(
 struct xfs_trans *tp,
 struct xfs_buf *bp)
{
 struct xfs_buf_log_item *bip = bp->b_log_item;

 ASSERT(bp->b_transp == tp);
 ASSERT(bip != ((void*)0));
 ASSERT(atomic_read(&bip->bli_refcount) > 0);

 if (xfs_buf_item_dirty_format(bip))
  return 0;

 bip->bli_flags |= XFS_BLI_ORDERED;
 trace_xfs_buf_item_ordered(bip);





 xfs_trans_dirty_buf(tp, bp);
 return 1;
}
