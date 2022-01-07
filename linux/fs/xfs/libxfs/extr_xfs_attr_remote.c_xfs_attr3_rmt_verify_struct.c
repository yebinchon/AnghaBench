
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xfs_failaddr_t ;
struct xfs_buf {int dummy; } ;


 int __xfs_attr3_rmt_read_verify (struct xfs_buf*,int,int **) ;

__attribute__((used)) static xfs_failaddr_t
xfs_attr3_rmt_verify_struct(
 struct xfs_buf *bp)
{
 xfs_failaddr_t fa;
 int error;

 error = __xfs_attr3_rmt_read_verify(bp, 0, &fa);
 return error ? fa : ((void*)0);
}
