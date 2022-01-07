
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_sb_info {int dummy; } ;
struct ext4_new_flex_group_data {int* bg_flags; int count; TYPE_1__* groups; } ;
struct buffer_head {int b_data; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_group_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int block_bitmap; scalar_t__ group; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int BUG_ON (int) ;
 int ENOMEM ;
 scalar_t__ EXT4_B2C (struct ext4_sb_info*,int ) ;
 int EXT4_BG_BLOCK_UNINIT ;
 int EXT4_C2B (struct ext4_sb_info*,scalar_t__) ;
 scalar_t__ EXT4_CLUSTERS_PER_GROUP (struct super_block*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int ext4_debug (char*,scalar_t__,scalar_t__,...) ;
 scalar_t__ ext4_get_group_number (struct super_block*,int ) ;
 int ext4_group_first_block_no (struct super_block*,scalar_t__) ;
 int ext4_handle_dirty_metadata (int *,int *,struct buffer_head*) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_set_bits (int ,scalar_t__,scalar_t__) ;
 int extend_or_restart_transaction (int *,int) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_flexbg_block_bitmap(struct super_block *sb, handle_t *handle,
   struct ext4_new_flex_group_data *flex_gd,
   ext4_fsblk_t first_cluster, ext4_fsblk_t last_cluster)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 ext4_group_t count = last_cluster - first_cluster + 1;
 ext4_group_t count2;

 ext4_debug("mark clusters [%llu-%llu] used\n", first_cluster,
     last_cluster);
 for (count2 = count; count > 0;
      count -= count2, first_cluster += count2) {
  ext4_fsblk_t start;
  struct buffer_head *bh;
  ext4_group_t group;
  int err;

  group = ext4_get_group_number(sb, EXT4_C2B(sbi, first_cluster));
  start = EXT4_B2C(sbi, ext4_group_first_block_no(sb, group));
  group -= flex_gd->groups[0].group;

  count2 = EXT4_CLUSTERS_PER_GROUP(sb) - (first_cluster - start);
  if (count2 > count)
   count2 = count;

  if (flex_gd->bg_flags[group] & EXT4_BG_BLOCK_UNINIT) {
   BUG_ON(flex_gd->count > 1);
   continue;
  }

  err = extend_or_restart_transaction(handle, 1);
  if (err)
   return err;

  bh = sb_getblk(sb, flex_gd->groups[group].block_bitmap);
  if (unlikely(!bh))
   return -ENOMEM;

  BUFFER_TRACE(bh, "get_write_access");
  err = ext4_journal_get_write_access(handle, bh);
  if (err) {
   brelse(bh);
   return err;
  }
  ext4_debug("mark block bitmap %#04llx (+%llu/%u)\n",
      first_cluster, first_cluster - start, count2);
  ext4_set_bits(bh->b_data, first_cluster - start, count2);

  err = ext4_handle_dirty_metadata(handle, ((void*)0), bh);
  brelse(bh);
  if (unlikely(err))
   return err;
 }

 return 0;
}
