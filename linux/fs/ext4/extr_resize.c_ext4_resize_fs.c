
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ext4_super_block {int s_first_data_block; int s_reserved_gdt_blocks; } ;
struct ext4_sb_info {int s_log_groups_per_flex; int s_groups_count; scalar_t__ s_itb_per_group; scalar_t__ s_cluster_ratio; struct ext4_super_block* s_es; } ;
struct ext4_new_flex_group_data {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ ext4_grpblk_t ;
typedef int ext4_group_t ;
typedef scalar_t__ ext4_fsblk_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 scalar_t__ EXT4_BLOCKS_PER_GROUP (struct super_block*) ;
 scalar_t__ EXT4_C2B (struct ext4_sb_info*,scalar_t__) ;
 scalar_t__ EXT4_CLUSTERS_PER_GROUP (struct super_block*) ;
 unsigned long EXT4_DESC_PER_BLOCK (struct super_block*) ;
 int EXT4_IGET_SPECIAL ;
 int EXT4_INODES_PER_GROUP (struct super_block*) ;
 int EXT4_RESIZE_INO ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int HZ ;
 scalar_t__ IS_ERR (struct inode*) ;
 int KERN_INFO ;
 int PTR_ERR (struct inode*) ;
 struct ext4_new_flex_group_data* alloc_flex_gd (int) ;
 int brelse (struct buffer_head*) ;
 int ext4_alloc_flex_bg_array (struct super_block*,int) ;
 scalar_t__ ext4_alloc_group_tables (struct super_block*,struct ext4_new_flex_group_data*,int) ;
 scalar_t__ ext4_blocks_count (struct ext4_super_block*) ;
 int ext4_convert_meta_bg (struct super_block*,struct inode*) ;
 int ext4_error (struct super_block*,char*) ;
 int ext4_flex_group_add (struct super_block*,struct inode*,struct ext4_new_flex_group_data*) ;
 int ext4_get_group_no_and_offset (struct super_block*,scalar_t__,int*,scalar_t__*) ;
 int ext4_get_group_number (struct super_block*,scalar_t__) ;
 int ext4_group_extend_no_check (struct super_block*,scalar_t__,scalar_t__) ;
 scalar_t__ ext4_group_first_block_no (struct super_block*,int) ;
 scalar_t__ ext4_group_overhead_blocks (struct super_block*,int) ;
 int ext4_has_feature_meta_bg (struct super_block*) ;
 scalar_t__ ext4_has_feature_resize_inode (struct super_block*) ;
 struct inode* ext4_iget (struct super_block*,int ,int ) ;
 int ext4_mb_alloc_groupinfo (struct super_block*,int) ;
 int ext4_msg (struct super_block*,int ,char*,scalar_t__,...) ;
 scalar_t__ ext4_setup_next_flex_gd (struct super_block*,struct ext4_new_flex_group_data*,scalar_t__,int) ;
 int ext4_warning (struct super_block*,char*,...) ;
 int free_flex_gd (struct ext4_new_flex_group_data*) ;
 int iput (struct inode*) ;
 unsigned long jiffies ;
 unsigned long le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 unsigned long num_desc_blocks (struct super_block*,int) ;
 struct buffer_head* sb_bread (struct super_block*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

int ext4_resize_fs(struct super_block *sb, ext4_fsblk_t n_blocks_count)
{
 struct ext4_new_flex_group_data *flex_gd = ((void*)0);
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct ext4_super_block *es = sbi->s_es;
 struct buffer_head *bh;
 struct inode *resize_inode = ((void*)0);
 ext4_grpblk_t add, offset;
 unsigned long n_desc_blocks;
 unsigned long o_desc_blocks;
 ext4_group_t o_group;
 ext4_group_t n_group;
 ext4_fsblk_t o_blocks_count;
 ext4_fsblk_t n_blocks_count_retry = 0;
 unsigned long last_update_time = 0;
 int err = 0, flexbg_size = 1 << sbi->s_log_groups_per_flex;
 int meta_bg;


 bh = sb_bread(sb, n_blocks_count - 1);
 if (!bh) {
  ext4_warning(sb, "can't read last block, resize aborted");
  return -ENOSPC;
 }
 brelse(bh);

retry:
 o_blocks_count = ext4_blocks_count(es);

 ext4_msg(sb, KERN_INFO, "resizing filesystem from %llu "
   "to %llu blocks", o_blocks_count, n_blocks_count);

 if (n_blocks_count < o_blocks_count) {

  ext4_warning(sb, "can't shrink FS - resize aborted");
  return -EINVAL;
 }

 if (n_blocks_count == o_blocks_count)

  return 0;

 n_group = ext4_get_group_number(sb, n_blocks_count - 1);
 if (n_group >= (0xFFFFFFFFUL / EXT4_INODES_PER_GROUP(sb))) {
  ext4_warning(sb, "resize would cause inodes_count overflow");
  return -EINVAL;
 }
 ext4_get_group_no_and_offset(sb, o_blocks_count - 1, &o_group, &offset);

 n_desc_blocks = num_desc_blocks(sb, n_group + 1);
 o_desc_blocks = num_desc_blocks(sb, sbi->s_groups_count);

 meta_bg = ext4_has_feature_meta_bg(sb);

 if (ext4_has_feature_resize_inode(sb)) {
  if (meta_bg) {
   ext4_error(sb, "resize_inode and meta_bg enabled "
       "simultaneously");
   return -EINVAL;
  }
  if (n_desc_blocks > o_desc_blocks +
      le16_to_cpu(es->s_reserved_gdt_blocks)) {
   n_blocks_count_retry = n_blocks_count;
   n_desc_blocks = o_desc_blocks +
    le16_to_cpu(es->s_reserved_gdt_blocks);
   n_group = n_desc_blocks * EXT4_DESC_PER_BLOCK(sb);
   n_blocks_count = (ext4_fsblk_t)n_group *
    EXT4_BLOCKS_PER_GROUP(sb) +
    le32_to_cpu(es->s_first_data_block);
   n_group--;
  }

  if (!resize_inode)
   resize_inode = ext4_iget(sb, EXT4_RESIZE_INO,
       EXT4_IGET_SPECIAL);
  if (IS_ERR(resize_inode)) {
   ext4_warning(sb, "Error opening resize inode");
   return PTR_ERR(resize_inode);
  }
 }

 if ((!resize_inode && !meta_bg) || n_blocks_count == o_blocks_count) {
  err = ext4_convert_meta_bg(sb, resize_inode);
  if (err)
   goto out;
  if (resize_inode) {
   iput(resize_inode);
   resize_inode = ((void*)0);
  }
  if (n_blocks_count_retry) {
   n_blocks_count = n_blocks_count_retry;
   n_blocks_count_retry = 0;
   goto retry;
  }
 }
 if ((ext4_group_first_block_no(sb, n_group) +
      ext4_group_overhead_blocks(sb, n_group) + 2 +
      sbi->s_itb_per_group + sbi->s_cluster_ratio) >= n_blocks_count) {
  n_blocks_count = ext4_group_first_block_no(sb, n_group);
  n_group--;
  n_blocks_count_retry = 0;
  if (resize_inode) {
   iput(resize_inode);
   resize_inode = ((void*)0);
  }
  goto retry;
 }


 if (n_group == o_group)
  add = n_blocks_count - o_blocks_count;
 else
  add = EXT4_C2B(sbi, EXT4_CLUSTERS_PER_GROUP(sb) - (offset + 1));
 if (add > 0) {
  err = ext4_group_extend_no_check(sb, o_blocks_count, add);
  if (err)
   goto out;
 }

 if (ext4_blocks_count(es) == n_blocks_count)
  goto out;

 err = ext4_alloc_flex_bg_array(sb, n_group + 1);
 if (err)
  goto out;

 err = ext4_mb_alloc_groupinfo(sb, n_group + 1);
 if (err)
  goto out;

 flex_gd = alloc_flex_gd(flexbg_size);
 if (flex_gd == ((void*)0)) {
  err = -ENOMEM;
  goto out;
 }




 while (ext4_setup_next_flex_gd(sb, flex_gd, n_blocks_count,
           flexbg_size)) {
  if (jiffies - last_update_time > HZ * 10) {
   if (last_update_time)
    ext4_msg(sb, KERN_INFO,
      "resized to %llu blocks",
      ext4_blocks_count(es));
   last_update_time = jiffies;
  }
  if (ext4_alloc_group_tables(sb, flex_gd, flexbg_size) != 0)
   break;
  err = ext4_flex_group_add(sb, resize_inode, flex_gd);
  if (unlikely(err))
   break;
 }

 if (!err && n_blocks_count_retry) {
  n_blocks_count = n_blocks_count_retry;
  n_blocks_count_retry = 0;
  free_flex_gd(flex_gd);
  flex_gd = ((void*)0);
  if (resize_inode) {
   iput(resize_inode);
   resize_inode = ((void*)0);
  }
  goto retry;
 }

out:
 if (flex_gd)
  free_flex_gd(flex_gd);
 if (resize_inode != ((void*)0))
  iput(resize_inode);
 if (err)
  ext4_warning(sb, "error (%d) occurred during "
        "file system resize", err);
 ext4_msg(sb, KERN_INFO, "resized filesystem to %llu",
   ext4_blocks_count(es));
 return err;
}
