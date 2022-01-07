
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
typedef int loff_t ;


 int NULLFILEOFF ;
 int XFS_ISIZE (struct xfs_inode*) ;
 scalar_t__ xfs_can_free_eofblocks (struct xfs_inode*,int) ;
 int xfs_flush_unmap_range (struct xfs_inode*,int ,int ) ;
 int xfs_free_eofblocks (struct xfs_inode*) ;
 scalar_t__ xfs_inode_has_cow_data (struct xfs_inode*) ;
 int xfs_reflink_cancel_cow_range (struct xfs_inode*,int ,int ,int) ;

__attribute__((used)) static int
xfs_prepare_shift(
 struct xfs_inode *ip,
 loff_t offset)
{
 int error;





 if (xfs_can_free_eofblocks(ip, 1)) {
  error = xfs_free_eofblocks(ip);
  if (error)
   return error;
 }





 error = xfs_flush_unmap_range(ip, offset, XFS_ISIZE(ip));
 if (error)
  return error;






 if (xfs_inode_has_cow_data(ip)) {
  error = xfs_reflink_cancel_cow_range(ip, offset, NULLFILEOFF,
    1);
  if (error)
   return error;
 }

 return 0;
}
