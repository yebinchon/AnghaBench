
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {unsigned long s_blocksize_bits; } ;
struct inode {unsigned long i_blkbits; struct super_block* i_sb; } ;
struct buffer_head {unsigned long b_size; } ;
typedef int sector_t ;


 int __fat_get_block (struct inode*,int ,unsigned long*,struct buffer_head*,int) ;

__attribute__((used)) static int fat_get_block(struct inode *inode, sector_t iblock,
    struct buffer_head *bh_result, int create)
{
 struct super_block *sb = inode->i_sb;
 unsigned long max_blocks = bh_result->b_size >> inode->i_blkbits;
 int err;

 err = __fat_get_block(inode, iblock, &max_blocks, bh_result, create);
 if (err)
  return err;
 bh_result->b_size = max_blocks << sb->s_blocksize_bits;
 return 0;
}
