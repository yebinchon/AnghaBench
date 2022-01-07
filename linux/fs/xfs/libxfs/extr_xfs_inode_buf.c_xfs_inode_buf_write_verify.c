
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int dummy; } ;


 int xfs_inode_buf_verify (struct xfs_buf*,int) ;

__attribute__((used)) static void
xfs_inode_buf_write_verify(
 struct xfs_buf *bp)
{
 xfs_inode_buf_verify(bp, 0);
}
