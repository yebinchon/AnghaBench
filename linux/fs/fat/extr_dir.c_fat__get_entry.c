
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; int s_blocksize; } ;
struct msdos_dir_entry {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int sector_t ;
typedef int loff_t ;
typedef int llu ;


 int KERN_ERR ;
 int brelse (struct buffer_head*) ;
 int fat_bmap (struct inode*,int,int*,unsigned long*,int ,int) ;
 int fat_dir_readahead (struct inode*,int,int) ;
 int fat_msg_ratelimit (struct super_block*,int ,char*,int ) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;

__attribute__((used)) static int fat__get_entry(struct inode *dir, loff_t *pos,
     struct buffer_head **bh, struct msdos_dir_entry **de)
{
 struct super_block *sb = dir->i_sb;
 sector_t phys, iblock;
 unsigned long mapped_blocks;
 int err, offset;

next:
 brelse(*bh);
 *bh = ((void*)0);
 iblock = *pos >> sb->s_blocksize_bits;
 err = fat_bmap(dir, iblock, &phys, &mapped_blocks, 0, 0);
 if (err || !phys)
  return -1;

 fat_dir_readahead(dir, iblock, phys);

 *bh = sb_bread(sb, phys);
 if (*bh == ((void*)0)) {
  fat_msg_ratelimit(sb, KERN_ERR,
   "Directory bread(block %llu) failed", (llu)phys);

  *pos = (iblock + 1) << sb->s_blocksize_bits;
  goto next;
 }

 offset = *pos & (sb->s_blocksize - 1);
 *pos += sizeof(struct msdos_dir_entry);
 *de = (struct msdos_dir_entry *)((*bh)->b_data + offset);

 return 0;
}
