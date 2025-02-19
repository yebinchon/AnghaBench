
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct iov_iter {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ ALIGN (int ,int) ;
 int i_size_read (struct inode*) ;
 scalar_t__ iov_iter_alignment (struct iov_iter*) ;

__attribute__((used)) static int
ext4_unaligned_aio(struct inode *inode, struct iov_iter *from, loff_t pos)
{
 struct super_block *sb = inode->i_sb;
 int blockmask = sb->s_blocksize - 1;

 if (pos >= ALIGN(i_size_read(inode), sb->s_blocksize))
  return 0;

 if ((pos | iov_iter_alignment(from)) & blockmask)
  return 1;

 return 0;
}
