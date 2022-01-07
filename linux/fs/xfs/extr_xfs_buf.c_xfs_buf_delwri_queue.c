
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_flags; int b_list; int b_hold; } ;
struct list_head {int dummy; } ;


 int ASSERT (int) ;
 int XBF_READ ;
 int _RET_IP_ ;
 int _XBF_DELWRI_Q ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,struct list_head*) ;
 scalar_t__ list_empty (int *) ;
 int trace_xfs_buf_delwri_queue (struct xfs_buf*,int ) ;
 int trace_xfs_buf_delwri_queued (struct xfs_buf*,int ) ;
 int xfs_buf_islocked (struct xfs_buf*) ;

bool
xfs_buf_delwri_queue(
 struct xfs_buf *bp,
 struct list_head *list)
{
 ASSERT(xfs_buf_islocked(bp));
 ASSERT(!(bp->b_flags & XBF_READ));






 if (bp->b_flags & _XBF_DELWRI_Q) {
  trace_xfs_buf_delwri_queued(bp, _RET_IP_);
  return 0;
 }

 trace_xfs_buf_delwri_queue(bp, _RET_IP_);
 bp->b_flags |= _XBF_DELWRI_Q;
 if (list_empty(&bp->b_list)) {
  atomic_inc(&bp->b_hold);
  list_add_tail(&bp->b_list, list);
 }

 return 1;
}
