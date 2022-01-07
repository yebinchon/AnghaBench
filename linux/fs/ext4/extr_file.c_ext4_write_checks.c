
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {scalar_t__ ki_pos; int ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int i_sb; } ;
struct ext4_sb_info {scalar_t__ s_bitmap_maxbytes; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EFBIG ;
 scalar_t__ EPERM ;
 int EXT4_INODE_EXTENTS ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int IS_IMMUTABLE (struct inode*) ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 struct inode* file_inode (int ) ;
 scalar_t__ generic_write_checks (struct kiocb*,struct iov_iter*) ;
 scalar_t__ iov_iter_count (struct iov_iter*) ;
 int iov_iter_truncate (struct iov_iter*,scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static ssize_t ext4_write_checks(struct kiocb *iocb, struct iov_iter *from)
{
 struct inode *inode = file_inode(iocb->ki_filp);
 ssize_t ret;

 ret = generic_write_checks(iocb, from);
 if (ret <= 0)
  return ret;

 if (unlikely(IS_IMMUTABLE(inode)))
  return -EPERM;





 if (!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))) {
  struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);

  if (iocb->ki_pos >= sbi->s_bitmap_maxbytes)
   return -EFBIG;
  iov_iter_truncate(from, sbi->s_bitmap_maxbytes - iocb->ki_pos);
 }
 return iov_iter_count(from);
}
