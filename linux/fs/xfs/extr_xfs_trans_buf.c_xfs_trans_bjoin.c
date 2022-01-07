
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int dummy; } ;
struct xfs_buf {int b_log_item; } ;


 int _xfs_trans_bjoin (struct xfs_trans*,struct xfs_buf*,int ) ;
 int trace_xfs_trans_bjoin (int ) ;

void
xfs_trans_bjoin(
 struct xfs_trans *tp,
 struct xfs_buf *bp)
{
 _xfs_trans_bjoin(tp, bp, 0);
 trace_xfs_trans_bjoin(bp->b_log_item);
}
