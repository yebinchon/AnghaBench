
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;


 scalar_t__ F2FS_IO_ALIGNED (struct f2fs_sb_info*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int IS_SWAPFILE (struct inode*) ;
 int LFS ;
 int SBI_CP_DISABLED ;
 int WRITE ;
 scalar_t__ block_unaligned_IO (struct inode*,struct kiocb*,struct iov_iter*) ;
 scalar_t__ f2fs_is_multi_device (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_post_read_required (struct inode*) ;
 scalar_t__ f2fs_sb_has_blkzoned (struct f2fs_sb_info*) ;
 int iov_iter_rw (struct iov_iter*) ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline bool f2fs_force_buffered_io(struct inode *inode,
    struct kiocb *iocb, struct iov_iter *iter)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 int rw = iov_iter_rw(iter);

 if (f2fs_post_read_required(inode))
  return 1;
 if (f2fs_is_multi_device(sbi))
  return 1;




 if (f2fs_sb_has_blkzoned(sbi))
  return 1;
 if (test_opt(sbi, LFS) && (rw == WRITE)) {
  if (block_unaligned_IO(inode, iocb, iter))
   return 1;
  if (F2FS_IO_ALIGNED(sbi))
   return 1;
 }
 if (is_sbi_flag_set(F2FS_I_SB(inode), SBI_CP_DISABLED) &&
     !IS_SWAPFILE(inode))
  return 1;

 return 0;
}
