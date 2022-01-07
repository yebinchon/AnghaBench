
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_flags; scalar_t__ b_error; int b_io_remaining; scalar_t__ b_io_error; int b_mount; } ;


 int ASSERT (int) ;
 int EIO ;
 int XBF_ASYNC ;
 int XBF_DONE ;
 int XBF_WRITE ;
 scalar_t__ XFS_FORCED_SHUTDOWN (int ) ;
 int _RET_IP_ ;
 int _XBF_DELWRI_Q ;
 int _xfs_buf_ioapply (struct xfs_buf*) ;
 int atomic_dec_and_test (int *) ;
 int atomic_set (int *,int) ;
 int trace_xfs_buf_submit (struct xfs_buf*,int ) ;
 int xfs_buf_hold (struct xfs_buf*) ;
 int xfs_buf_ioacct_inc (struct xfs_buf*) ;
 int xfs_buf_ioend (struct xfs_buf*) ;
 int xfs_buf_ioend_async (struct xfs_buf*) ;
 int xfs_buf_ioerror (struct xfs_buf*,int) ;
 int xfs_buf_iowait (struct xfs_buf*) ;
 int xfs_buf_rele (struct xfs_buf*) ;
 int xfs_buf_stale (struct xfs_buf*) ;
 int xfs_buf_wait_unpin (struct xfs_buf*) ;

int
__xfs_buf_submit(
 struct xfs_buf *bp,
 bool wait)
{
 int error = 0;

 trace_xfs_buf_submit(bp, _RET_IP_);

 ASSERT(!(bp->b_flags & _XBF_DELWRI_Q));


 if (XFS_FORCED_SHUTDOWN(bp->b_mount)) {
  xfs_buf_ioerror(bp, -EIO);
  bp->b_flags &= ~XBF_DONE;
  xfs_buf_stale(bp);
  xfs_buf_ioend(bp);
  return -EIO;
 }






 xfs_buf_hold(bp);

 if (bp->b_flags & XBF_WRITE)
  xfs_buf_wait_unpin(bp);


 bp->b_io_error = 0;






 atomic_set(&bp->b_io_remaining, 1);
 if (bp->b_flags & XBF_ASYNC)
  xfs_buf_ioacct_inc(bp);
 _xfs_buf_ioapply(bp);






 if (atomic_dec_and_test(&bp->b_io_remaining) == 1) {
  if (bp->b_error || !(bp->b_flags & XBF_ASYNC))
   xfs_buf_ioend(bp);
  else
   xfs_buf_ioend_async(bp);
 }

 if (wait)
  error = xfs_buf_iowait(bp);






 xfs_buf_rele(bp);
 return error;
}
