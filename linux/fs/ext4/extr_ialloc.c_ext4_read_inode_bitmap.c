
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct ext4_sb_info {TYPE_1__* s_es; } ;
struct ext4_group_desc {int bg_flags; } ;
struct buffer_head {int b_end_io; int b_data; } ;
typedef scalar_t__ ext4_group_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int s_first_data_block; } ;


 int EFSCORRUPTED ;
 int EIO ;
 int ENOMEM ;
 struct buffer_head* ERR_PTR (int) ;
 int EXT4_BG_INODE_UNINIT ;
 int EXT4_GROUP_INFO_IBITMAP_CORRUPT ;
 int EXT4_INODES_PER_GROUP (struct super_block*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int REQ_META ;
 int REQ_OP_READ ;
 int REQ_PRIO ;
 scalar_t__ bitmap_uptodate (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int cpu_to_le16 (int ) ;
 scalar_t__ ext4_blocks_count (TYPE_1__*) ;
 int ext4_end_bitmap_read ;
 int ext4_error (struct super_block*,char*,...) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,scalar_t__,int *) ;
 scalar_t__ ext4_has_group_desc_csum (struct super_block*) ;
 scalar_t__ ext4_inode_bitmap (struct super_block*,struct ext4_group_desc*) ;
 int ext4_lock_group (struct super_block*,scalar_t__) ;
 int ext4_mark_bitmap_end (int,int,int ) ;
 int ext4_mark_group_bitmap_corrupted (struct super_block*,scalar_t__,int ) ;
 int ext4_unlock_group (struct super_block*,scalar_t__) ;
 int ext4_validate_inode_bitmap (struct super_block*,struct ext4_group_desc*,scalar_t__,struct buffer_head*) ;
 int ext4_warning (struct super_block*,char*,scalar_t__,scalar_t__) ;
 int get_bh (struct buffer_head*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int lock_buffer (struct buffer_head*) ;
 int memset (int ,int ,int) ;
 int put_bh (struct buffer_head*) ;
 struct buffer_head* sb_getblk (struct super_block*,scalar_t__) ;
 int set_bitmap_uptodate (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int set_buffer_verified (struct buffer_head*) ;
 int submit_bh (int ,int,struct buffer_head*) ;
 int trace_ext4_load_inode_bitmap (struct super_block*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *
ext4_read_inode_bitmap(struct super_block *sb, ext4_group_t block_group)
{
 struct ext4_group_desc *desc;
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct buffer_head *bh = ((void*)0);
 ext4_fsblk_t bitmap_blk;
 int err;

 desc = ext4_get_group_desc(sb, block_group, ((void*)0));
 if (!desc)
  return ERR_PTR(-EFSCORRUPTED);

 bitmap_blk = ext4_inode_bitmap(sb, desc);
 if ((bitmap_blk <= le32_to_cpu(sbi->s_es->s_first_data_block)) ||
     (bitmap_blk >= ext4_blocks_count(sbi->s_es))) {
  ext4_error(sb, "Invalid inode bitmap blk %llu in "
      "block_group %u", bitmap_blk, block_group);
  ext4_mark_group_bitmap_corrupted(sb, block_group,
     EXT4_GROUP_INFO_IBITMAP_CORRUPT);
  return ERR_PTR(-EFSCORRUPTED);
 }
 bh = sb_getblk(sb, bitmap_blk);
 if (unlikely(!bh)) {
  ext4_warning(sb, "Cannot read inode bitmap - "
        "block_group = %u, inode_bitmap = %llu",
        block_group, bitmap_blk);
  return ERR_PTR(-ENOMEM);
 }
 if (bitmap_uptodate(bh))
  goto verify;

 lock_buffer(bh);
 if (bitmap_uptodate(bh)) {
  unlock_buffer(bh);
  goto verify;
 }

 ext4_lock_group(sb, block_group);
 if (ext4_has_group_desc_csum(sb) &&
     (desc->bg_flags & cpu_to_le16(EXT4_BG_INODE_UNINIT))) {
  if (block_group == 0) {
   ext4_unlock_group(sb, block_group);
   unlock_buffer(bh);
   ext4_error(sb, "Inode bitmap for bg 0 marked "
       "uninitialized");
   err = -EFSCORRUPTED;
   goto out;
  }
  memset(bh->b_data, 0, (EXT4_INODES_PER_GROUP(sb) + 7) / 8);
  ext4_mark_bitmap_end(EXT4_INODES_PER_GROUP(sb),
         sb->s_blocksize * 8, bh->b_data);
  set_bitmap_uptodate(bh);
  set_buffer_uptodate(bh);
  set_buffer_verified(bh);
  ext4_unlock_group(sb, block_group);
  unlock_buffer(bh);
  return bh;
 }
 ext4_unlock_group(sb, block_group);

 if (buffer_uptodate(bh)) {




  set_bitmap_uptodate(bh);
  unlock_buffer(bh);
  goto verify;
 }



 trace_ext4_load_inode_bitmap(sb, block_group);
 bh->b_end_io = ext4_end_bitmap_read;
 get_bh(bh);
 submit_bh(REQ_OP_READ, REQ_META | REQ_PRIO, bh);
 wait_on_buffer(bh);
 if (!buffer_uptodate(bh)) {
  put_bh(bh);
  ext4_error(sb, "Cannot read inode bitmap - "
      "block_group = %u, inode_bitmap = %llu",
      block_group, bitmap_blk);
  ext4_mark_group_bitmap_corrupted(sb, block_group,
    EXT4_GROUP_INFO_IBITMAP_CORRUPT);
  return ERR_PTR(-EIO);
 }

verify:
 err = ext4_validate_inode_bitmap(sb, desc, block_group, bh);
 if (err)
  goto out;
 return bh;
out:
 put_bh(bh);
 return ERR_PTR(err);
}
