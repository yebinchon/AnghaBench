
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct xfs_buf {int b_error; int b_length; int b_mount; } ;


 scalar_t__ XFS_BUF_ADDR (struct xfs_buf*) ;
 int xfs_alert (int ,char*,char const*,int ,int ,int ) ;

void
xfs_buf_ioerror_alert(
 struct xfs_buf *bp,
 const char *func)
{
 xfs_alert(bp->b_mount,
"metadata I/O error in \"%s\" at daddr 0x%llx len %d error %d",
   func, (uint64_t)XFS_BUF_ADDR(bp), bp->b_length,
   -bp->b_error);
}
