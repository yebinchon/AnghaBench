
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_sb_info {int devblksize; } ;
struct buffer_head {scalar_t__* b_data; } ;


 int put_bh (struct buffer_head*) ;
 struct buffer_head* sb_bread (struct super_block*,int ) ;

__attribute__((used)) static struct buffer_head *get_block_length(struct super_block *sb,
   u64 *cur_index, int *offset, int *length)
{
 struct squashfs_sb_info *msblk = sb->s_fs_info;
 struct buffer_head *bh;

 bh = sb_bread(sb, *cur_index);
 if (bh == ((void*)0))
  return ((void*)0);

 if (msblk->devblksize - *offset == 1) {
  *length = (unsigned char) bh->b_data[*offset];
  put_bh(bh);
  bh = sb_bread(sb, ++(*cur_index));
  if (bh == ((void*)0))
   return ((void*)0);
  *length |= (unsigned char) bh->b_data[0] << 8;
  *offset = 1;
 } else {
  *length = (unsigned char) bh->b_data[*offset] |
   (unsigned char) bh->b_data[*offset + 1] << 8;
  *offset += 2;

  if (*offset == msblk->devblksize) {
   put_bh(bh);
   bh = sb_bread(sb, ++(*cur_index));
   if (bh == ((void*)0))
    return ((void*)0);
   *offset = 0;
  }
 }

 return bh;
}
