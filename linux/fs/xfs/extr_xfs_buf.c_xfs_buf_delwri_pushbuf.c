
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_flags; int b_list; } ;
struct list_head {int dummy; } ;


 int ASSERT (int) ;
 int LIST_HEAD (int ) ;
 int _RET_IP_ ;
 int _XBF_DELWRI_Q ;
 int list_move (int *,int *) ;
 int submit_list ;
 int trace_xfs_buf_delwri_pushbuf (struct xfs_buf*,int ) ;
 int xfs_buf_delwri_submit_buffers (int *,struct list_head*) ;
 int xfs_buf_iowait (struct xfs_buf*) ;
 int xfs_buf_lock (struct xfs_buf*) ;
 int xfs_buf_unlock (struct xfs_buf*) ;

int
xfs_buf_delwri_pushbuf(
 struct xfs_buf *bp,
 struct list_head *buffer_list)
{
 LIST_HEAD (submit_list);
 int error;

 ASSERT(bp->b_flags & _XBF_DELWRI_Q);

 trace_xfs_buf_delwri_pushbuf(bp, _RET_IP_);





 xfs_buf_lock(bp);
 list_move(&bp->b_list, &submit_list);
 xfs_buf_unlock(bp);







 xfs_buf_delwri_submit_buffers(&submit_list, buffer_list);






 error = xfs_buf_iowait(bp);
 bp->b_flags |= _XBF_DELWRI_Q;
 xfs_buf_unlock(bp);

 return error;
}
