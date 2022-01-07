
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_buf {int b_flags; int b_iowait; int (* b_iodone ) (struct xfs_buf*) ;int b_error; TYPE_1__* b_ops; scalar_t__ b_io_error; } ;
struct TYPE_2__ {int (* verify_read ) (struct xfs_buf*) ;} ;


 int ASSERT (int) ;
 int XBF_ASYNC ;
 int XBF_DONE ;
 int XBF_READ ;
 int XBF_READ_AHEAD ;
 int XBF_WRITE ;
 int _RET_IP_ ;
 int complete (int *) ;
 int stub1 (struct xfs_buf*) ;
 int stub2 (struct xfs_buf*) ;
 int trace_xfs_buf_iodone (struct xfs_buf*,int ) ;
 int xfs_buf_ioerror (struct xfs_buf*,scalar_t__) ;
 int xfs_buf_relse (struct xfs_buf*) ;

void
xfs_buf_ioend(
 struct xfs_buf *bp)
{
 bool read = bp->b_flags & XBF_READ;

 trace_xfs_buf_iodone(bp, _RET_IP_);

 bp->b_flags &= ~(XBF_READ | XBF_WRITE | XBF_READ_AHEAD);





 if (!bp->b_error && bp->b_io_error)
  xfs_buf_ioerror(bp, bp->b_io_error);


 if (read && !bp->b_error && bp->b_ops) {
  ASSERT(!bp->b_iodone);
  bp->b_ops->verify_read(bp);
 }

 if (!bp->b_error)
  bp->b_flags |= XBF_DONE;

 if (bp->b_iodone)
  (*(bp->b_iodone))(bp);
 else if (bp->b_flags & XBF_ASYNC)
  xfs_buf_relse(bp);
 else
  complete(&bp->b_iowait);
}
