
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qnx4_inode_entry {int dummy; } ;
struct inode {unsigned long i_size; int i_sb; } ;
struct buffer_head {unsigned long b_size; scalar_t__ b_data; } ;


 unsigned long QNX4_BLOCK_SIZE ;
 unsigned long QNX4_DIR_ENTRY_SIZE ;
 unsigned long QNX4_INODES_PER_BLOCK ;
 int brelse (struct buffer_head*) ;
 unsigned long qnx4_block_map (struct inode*,unsigned long) ;
 scalar_t__ qnx4_match (int,char const*,struct buffer_head*,unsigned long*) ;
 struct buffer_head* sb_bread (int ,unsigned long) ;

__attribute__((used)) static struct buffer_head *qnx4_find_entry(int len, struct inode *dir,
    const char *name, struct qnx4_inode_entry **res_dir, int *ino)
{
 unsigned long block, offset, blkofs;
 struct buffer_head *bh;

 *res_dir = ((void*)0);
 bh = ((void*)0);
 block = offset = blkofs = 0;
 while (blkofs * QNX4_BLOCK_SIZE + offset < dir->i_size) {
  if (!bh) {
   block = qnx4_block_map(dir, blkofs);
   if (block)
    bh = sb_bread(dir->i_sb, block);
   if (!bh) {
    blkofs++;
    continue;
   }
  }
  *res_dir = (struct qnx4_inode_entry *) (bh->b_data + offset);
  if (qnx4_match(len, name, bh, &offset)) {
   *ino = block * QNX4_INODES_PER_BLOCK +
       (offset / QNX4_DIR_ENTRY_SIZE) - 1;
   return bh;
  }
  if (offset < bh->b_size) {
   continue;
  }
  brelse(bh);
  bh = ((void*)0);
  offset = 0;
  blkofs++;
 }
 brelse(bh);
 *res_dir = ((void*)0);
 return ((void*)0);
}
