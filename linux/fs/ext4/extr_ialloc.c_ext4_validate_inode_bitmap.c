
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_group_info {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int ext4_group_t ;
typedef int ext4_fsblk_t ;


 int EFSBADCRC ;
 int EFSCORRUPTED ;
 int EXT4_GROUP_INFO_IBITMAP_CORRUPT ;
 int EXT4_INODES_PER_GROUP (struct super_block*) ;
 scalar_t__ EXT4_MB_GRP_IBITMAP_CORRUPT (struct ext4_group_info*) ;
 scalar_t__ buffer_verified (struct buffer_head*) ;
 int ext4_error (struct super_block*,char*,int ,int ) ;
 struct ext4_group_info* ext4_get_group_info (struct super_block*,int ) ;
 int ext4_inode_bitmap (struct super_block*,struct ext4_group_desc*) ;
 int ext4_inode_bitmap_csum_verify (struct super_block*,int ,struct ext4_group_desc*,struct buffer_head*,int) ;
 int ext4_lock_group (struct super_block*,int ) ;
 int ext4_mark_group_bitmap_corrupted (struct super_block*,int ,int ) ;
 int ext4_unlock_group (struct super_block*,int ) ;
 int set_buffer_verified (struct buffer_head*) ;

__attribute__((used)) static int ext4_validate_inode_bitmap(struct super_block *sb,
          struct ext4_group_desc *desc,
          ext4_group_t block_group,
          struct buffer_head *bh)
{
 ext4_fsblk_t blk;
 struct ext4_group_info *grp = ext4_get_group_info(sb, block_group);

 if (buffer_verified(bh))
  return 0;
 if (EXT4_MB_GRP_IBITMAP_CORRUPT(grp))
  return -EFSCORRUPTED;

 ext4_lock_group(sb, block_group);
 if (buffer_verified(bh))
  goto verified;
 blk = ext4_inode_bitmap(sb, desc);
 if (!ext4_inode_bitmap_csum_verify(sb, block_group, desc, bh,
        EXT4_INODES_PER_GROUP(sb) / 8)) {
  ext4_unlock_group(sb, block_group);
  ext4_error(sb, "Corrupt inode bitmap - block_group = %u, "
      "inode_bitmap = %llu", block_group, blk);
  ext4_mark_group_bitmap_corrupted(sb, block_group,
     EXT4_GROUP_INFO_IBITMAP_CORRUPT);
  return -EFSBADCRC;
 }
 set_buffer_verified(bh);
verified:
 ext4_unlock_group(sb, block_group);
 return 0;
}
