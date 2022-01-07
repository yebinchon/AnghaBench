
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_sema; } ;


 int ASSERT (int ) ;
 int _RET_IP_ ;
 int trace_xfs_buf_unlock (struct xfs_buf*,int ) ;
 int up (int *) ;
 int xfs_buf_islocked (struct xfs_buf*) ;

void
xfs_buf_unlock(
 struct xfs_buf *bp)
{
 ASSERT(xfs_buf_islocked(bp));

 up(&bp->b_sema);
 trace_xfs_buf_unlock(bp, _RET_IP_);
}
