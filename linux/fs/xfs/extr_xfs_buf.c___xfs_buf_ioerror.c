
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_failaddr_t ;
struct TYPE_4__ {int b_error; } ;
typedef TYPE_1__ xfs_buf_t ;


 int ASSERT (int) ;
 int trace_xfs_buf_ioerror (TYPE_1__*,int,int ) ;

void
__xfs_buf_ioerror(
 xfs_buf_t *bp,
 int error,
 xfs_failaddr_t failaddr)
{
 ASSERT(error <= 0 && error >= -1000);
 bp->b_error = error;
 trace_xfs_buf_ioerror(bp, error, failaddr);
}
