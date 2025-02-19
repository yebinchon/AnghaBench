
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; } ;
struct ext4_super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ ext4_grpblk_t ;
typedef int ext4_group_t ;
typedef scalar_t__ ext4_fsblk_t ;


 int DEBUG ;
 int EINVAL ;
 int ENOSPC ;
 int EPERM ;
 scalar_t__ EXT4_BLOCKS_PER_GROUP (struct super_block*) ;
 int KERN_DEBUG ;
 int KERN_ERR ;
 int brelse (struct buffer_head*) ;
 scalar_t__ ext4_blocks_count (struct ext4_super_block*) ;
 int ext4_get_group_no_and_offset (struct super_block*,scalar_t__,int *,scalar_t__*) ;
 int ext4_group_extend_no_check (struct super_block*,scalar_t__,scalar_t__) ;
 int ext4_msg (struct super_block*,int ,char*,scalar_t__,...) ;
 int ext4_warning (struct super_block*,char*,...) ;
 struct buffer_head* sb_bread (struct super_block*,scalar_t__) ;
 scalar_t__ test_opt (struct super_block*,int ) ;

int ext4_group_extend(struct super_block *sb, struct ext4_super_block *es,
        ext4_fsblk_t n_blocks_count)
{
 ext4_fsblk_t o_blocks_count;
 ext4_grpblk_t last;
 ext4_grpblk_t add;
 struct buffer_head *bh;
 int err;
 ext4_group_t group;

 o_blocks_count = ext4_blocks_count(es);

 if (test_opt(sb, DEBUG))
  ext4_msg(sb, KERN_DEBUG,
    "extending last group from %llu to %llu blocks",
    o_blocks_count, n_blocks_count);

 if (n_blocks_count == 0 || n_blocks_count == o_blocks_count)
  return 0;

 if (n_blocks_count > (sector_t)(~0ULL) >> (sb->s_blocksize_bits - 9)) {
  ext4_msg(sb, KERN_ERR,
    "filesystem too large to resize to %llu blocks safely",
    n_blocks_count);
  return -EINVAL;
 }

 if (n_blocks_count < o_blocks_count) {
  ext4_warning(sb, "can't shrink FS - resize aborted");
  return -EINVAL;
 }


 ext4_get_group_no_and_offset(sb, o_blocks_count, &group, &last);

 if (last == 0) {
  ext4_warning(sb, "need to use ext2online to resize further");
  return -EPERM;
 }

 add = EXT4_BLOCKS_PER_GROUP(sb) - last;

 if (o_blocks_count + add < o_blocks_count) {
  ext4_warning(sb, "blocks_count overflow");
  return -EINVAL;
 }

 if (o_blocks_count + add > n_blocks_count)
  add = n_blocks_count - o_blocks_count;

 if (o_blocks_count + add < n_blocks_count)
  ext4_warning(sb, "will only finish group (%llu blocks, %u new)",
        o_blocks_count + add, add);


 bh = sb_bread(sb, o_blocks_count + add - 1);
 if (!bh) {
  ext4_warning(sb, "can't read last block, resize aborted");
  return -ENOSPC;
 }
 brelse(bh);

 err = ext4_group_extend_no_check(sb, o_blocks_count, add);
 return err;
}
