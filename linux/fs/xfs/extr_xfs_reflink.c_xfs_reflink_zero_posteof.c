
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
typedef scalar_t__ loff_t ;


 int VFS_I (struct xfs_inode*) ;
 scalar_t__ i_size_read (int ) ;
 int iomap_zero_range (int ,scalar_t__,scalar_t__,int *,int *) ;
 int trace_xfs_zero_eof (struct xfs_inode*,scalar_t__,scalar_t__) ;
 int xfs_iomap_ops ;

__attribute__((used)) static int
xfs_reflink_zero_posteof(
 struct xfs_inode *ip,
 loff_t pos)
{
 loff_t isize = i_size_read(VFS_I(ip));

 if (pos <= isize)
  return 0;

 trace_xfs_zero_eof(ip, isize, pos - isize);
 return iomap_zero_range(VFS_I(ip), isize, pos - isize, ((void*)0),
   &xfs_iomap_ops);
}
