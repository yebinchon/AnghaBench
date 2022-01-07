
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
typedef int ext4_group_t ;


 int EFSCORRUPTED ;
 int EIO ;
 int EXT4_GROUP_INFO_BBITMAP_CORRUPT ;
 int buffer_new (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 int ext4_error (struct super_block*,char*,int ,unsigned long long) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,int ,int *) ;
 int ext4_mark_group_bitmap_corrupted (struct super_block*,int ,int ) ;
 int ext4_validate_block_bitmap (struct super_block*,struct ext4_group_desc*,int ,struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

int ext4_wait_block_bitmap(struct super_block *sb, ext4_group_t block_group,
      struct buffer_head *bh)
{
 struct ext4_group_desc *desc;

 if (!buffer_new(bh))
  return 0;
 desc = ext4_get_group_desc(sb, block_group, ((void*)0));
 if (!desc)
  return -EFSCORRUPTED;
 wait_on_buffer(bh);
 if (!buffer_uptodate(bh)) {
  ext4_error(sb, "Cannot read block bitmap - "
      "block_group = %u, block_bitmap = %llu",
      block_group, (unsigned long long) bh->b_blocknr);
  ext4_mark_group_bitmap_corrupted(sb, block_group,
     EXT4_GROUP_INFO_BBITMAP_CORRUPT);
  return -EIO;
 }
 clear_buffer_new(bh);

 return ext4_validate_block_bitmap(sb, desc, block_group, bh);
}
