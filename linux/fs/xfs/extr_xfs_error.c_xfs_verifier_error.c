
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_failaddr_t ;
struct xfs_buf {int dummy; } ;


 int XFS_CORRUPTION_DUMP_LEN ;
 int xfs_buf_offset (struct xfs_buf*,int ) ;
 void xfs_buf_verifier_error (struct xfs_buf*,int,char*,int ,int ,int ) ;

void
xfs_verifier_error(
 struct xfs_buf *bp,
 int error,
 xfs_failaddr_t failaddr)
{
 return xfs_buf_verifier_error(bp, error, "", xfs_buf_offset(bp, 0),
   XFS_CORRUPTION_DUMP_LEN, failaddr);
}
