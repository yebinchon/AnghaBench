
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;


 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int LFS ;
 int WRITE ;
 int block_unaligned_IO (struct inode*,struct kiocb*,struct iov_iter*) ;
 int iov_iter_rw (struct iov_iter*) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline int allow_outplace_dio(struct inode *inode,
    struct kiocb *iocb, struct iov_iter *iter)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 int rw = iov_iter_rw(iter);

 return (test_opt(sbi, LFS) && (rw == WRITE) &&
    !block_unaligned_IO(inode, iocb, iter));
}
