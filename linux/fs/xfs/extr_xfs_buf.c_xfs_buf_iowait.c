
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_flags; int b_error; int b_iowait; } ;


 int ASSERT (int) ;
 int XBF_ASYNC ;
 int _RET_IP_ ;
 int trace_xfs_buf_iowait (struct xfs_buf*,int ) ;
 int trace_xfs_buf_iowait_done (struct xfs_buf*,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int
xfs_buf_iowait(
 struct xfs_buf *bp)
{
 ASSERT(!(bp->b_flags & XBF_ASYNC));

 trace_xfs_buf_iowait(bp, _RET_IP_);
 wait_for_completion(&bp->b_iowait);
 trace_xfs_buf_iowait_done(bp, _RET_IP_);

 return bp->b_error;
}
