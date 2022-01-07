
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_flags; int b_mount; } ;


 int ASSERT (int ) ;
 int SHUTDOWN_META_IO_ERROR ;
 int XBF_ASYNC ;
 int XBF_DONE ;
 int XBF_READ ;
 int XBF_WRITE ;
 int XBF_WRITE_FAIL ;
 int _XBF_DELWRI_Q ;
 int xfs_buf_islocked (struct xfs_buf*) ;
 int xfs_buf_submit (struct xfs_buf*) ;
 int xfs_force_shutdown (int ,int ) ;

int
xfs_bwrite(
 struct xfs_buf *bp)
{
 int error;

 ASSERT(xfs_buf_islocked(bp));

 bp->b_flags |= XBF_WRITE;
 bp->b_flags &= ~(XBF_ASYNC | XBF_READ | _XBF_DELWRI_Q |
    XBF_WRITE_FAIL | XBF_DONE);

 error = xfs_buf_submit(bp);
 if (error)
  xfs_force_shutdown(bp->b_mount, SHUTDOWN_META_IO_ERROR);
 return error;
}
