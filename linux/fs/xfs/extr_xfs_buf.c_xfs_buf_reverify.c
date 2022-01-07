
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf_ops {int (* verify_read ) (struct xfs_buf*) ;} ;
struct xfs_buf {int b_flags; scalar_t__ b_error; struct xfs_buf_ops const* b_ops; } ;


 int ASSERT (int) ;
 int XBF_DONE ;
 int stub1 (struct xfs_buf*) ;

int
xfs_buf_reverify(
 struct xfs_buf *bp,
 const struct xfs_buf_ops *ops)
{
 ASSERT(bp->b_flags & XBF_DONE);
 ASSERT(bp->b_error == 0);

 if (!ops || bp->b_ops)
  return 0;

 bp->b_ops = ops;
 bp->b_ops->verify_read(bp);
 if (bp->b_error)
  bp->b_flags &= ~XBF_DONE;
 return bp->b_error;
}
