
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_off_t ;
typedef scalar_t__ xfs_fileoff_t ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct TYPE_3__ {int i_mapping; } ;


 int LLONG_MAX ;
 int PAGE_SIZE ;
 TYPE_1__* VFS_I (struct xfs_inode*) ;
 scalar_t__ XFS_B_TO_FSB (struct xfs_mount*,scalar_t__) ;
 scalar_t__ XFS_B_TO_FSBT (struct xfs_mount*,scalar_t__) ;
 scalar_t__ XFS_ISIZE (struct xfs_inode*) ;
 int filemap_write_and_wait_range (int ,int ,int ) ;
 int iomap_zero_range (TYPE_1__*,scalar_t__,scalar_t__,int *,int *) ;
 scalar_t__ offset_in_page (scalar_t__) ;
 int round_down (scalar_t__,int ) ;
 int trace_xfs_free_file_space (struct xfs_inode*) ;
 int xfs_flush_unmap_range (struct xfs_inode*,scalar_t__,scalar_t__) ;
 int xfs_iomap_ops ;
 int xfs_qm_dqattach (struct xfs_inode*) ;
 int xfs_unmap_extent (struct xfs_inode*,scalar_t__,scalar_t__,int*) ;

int
xfs_free_file_space(
 struct xfs_inode *ip,
 xfs_off_t offset,
 xfs_off_t len)
{
 struct xfs_mount *mp = ip->i_mount;
 xfs_fileoff_t startoffset_fsb;
 xfs_fileoff_t endoffset_fsb;
 int done = 0, error;

 trace_xfs_free_file_space(ip);

 error = xfs_qm_dqattach(ip);
 if (error)
  return error;

 if (len <= 0)
  return 0;

 error = xfs_flush_unmap_range(ip, offset, len);
 if (error)
  return error;

 startoffset_fsb = XFS_B_TO_FSB(mp, offset);
 endoffset_fsb = XFS_B_TO_FSBT(mp, offset + len);




 if (endoffset_fsb > startoffset_fsb) {
  while (!done) {
   error = xfs_unmap_extent(ip, startoffset_fsb,
     endoffset_fsb - startoffset_fsb, &done);
   if (error)
    return error;
  }
 }







 if (offset >= XFS_ISIZE(ip))
  return 0;
 if (offset + len > XFS_ISIZE(ip))
  len = XFS_ISIZE(ip) - offset;
 error = iomap_zero_range(VFS_I(ip), offset, len, ((void*)0), &xfs_iomap_ops);
 if (error)
  return error;







 if (offset + len >= XFS_ISIZE(ip) && offset_in_page(offset + len) > 0) {
  error = filemap_write_and_wait_range(VFS_I(ip)->i_mapping,
    round_down(offset + len, PAGE_SIZE), LLONG_MAX);
 }

 return error;
}
