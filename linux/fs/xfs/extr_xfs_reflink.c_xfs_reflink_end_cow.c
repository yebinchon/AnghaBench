
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_off_t ;
typedef scalar_t__ xfs_fileoff_t ;
struct xfs_inode {int i_mount; } ;


 scalar_t__ XFS_B_TO_FSB (int ,scalar_t__) ;
 scalar_t__ XFS_B_TO_FSBT (int ,scalar_t__) ;
 int _RET_IP_ ;
 int trace_xfs_reflink_end_cow (struct xfs_inode*,scalar_t__,scalar_t__) ;
 int trace_xfs_reflink_end_cow_error (struct xfs_inode*,int,int ) ;
 int xfs_reflink_end_cow_extent (struct xfs_inode*,scalar_t__,scalar_t__*) ;

int
xfs_reflink_end_cow(
 struct xfs_inode *ip,
 xfs_off_t offset,
 xfs_off_t count)
{
 xfs_fileoff_t offset_fsb;
 xfs_fileoff_t end_fsb;
 int error = 0;

 trace_xfs_reflink_end_cow(ip, offset, count);

 offset_fsb = XFS_B_TO_FSBT(ip->i_mount, offset);
 end_fsb = XFS_B_TO_FSB(ip->i_mount, offset + count);
 while (end_fsb > offset_fsb && !error)
  error = xfs_reflink_end_cow_extent(ip, offset_fsb, &end_fsb);

 if (error)
  trace_xfs_reflink_end_cow_error(ip, error, _RET_IP_);
 return error;
}
