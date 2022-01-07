
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_flags; int b_sema; int b_mount; int b_pin_count; } ;


 int XBF_STALE ;
 int _RET_IP_ ;
 scalar_t__ atomic_read (int *) ;
 int down (int *) ;
 int trace_xfs_buf_lock (struct xfs_buf*,int ) ;
 int trace_xfs_buf_lock_done (struct xfs_buf*,int ) ;
 int xfs_log_force (int ,int ) ;

void
xfs_buf_lock(
 struct xfs_buf *bp)
{
 trace_xfs_buf_lock(bp, _RET_IP_);

 if (atomic_read(&bp->b_pin_count) && (bp->b_flags & XBF_STALE))
  xfs_log_force(bp->b_mount, 0);
 down(&bp->b_sema);

 trace_xfs_buf_lock_done(bp, _RET_IP_);
}
