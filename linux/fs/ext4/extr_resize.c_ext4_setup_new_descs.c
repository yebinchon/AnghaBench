
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_sb_info {struct buffer_head** s_group_desc; } ;
struct ext4_new_group_data {int group; int free_clusters_count; int inode_table; int inode_bitmap; int block_bitmap; } ;
struct ext4_new_flex_group_data {int count; int * bg_flags; struct ext4_new_group_data* groups; } ;
struct ext4_group_desc {int bg_flags; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
typedef int ext4_group_t ;
typedef int __u16 ;


 int EXT4_DESC_PER_BLOCK (struct super_block*) ;
 int EXT4_DESC_SIZE (struct super_block*) ;
 int EXT4_INODES_PER_GROUP (struct super_block*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int cpu_to_le16 (int ) ;
 int ext4_block_bitmap_set (struct super_block*,struct ext4_group_desc*,int ) ;
 int ext4_free_group_clusters_set (struct super_block*,struct ext4_group_desc*,int ) ;
 int ext4_free_inodes_set (struct super_block*,struct ext4_group_desc*,int ) ;
 int ext4_group_desc_csum_set (struct super_block*,int,struct ext4_group_desc*) ;
 int ext4_handle_dirty_metadata (int *,int *,struct buffer_head*) ;
 scalar_t__ ext4_has_group_desc_csum (struct super_block*) ;
 int ext4_inode_bitmap_set (struct super_block*,struct ext4_group_desc*,int ) ;
 int ext4_inode_table_set (struct super_block*,struct ext4_group_desc*,int ) ;
 int ext4_itable_unused_set (struct super_block*,struct ext4_group_desc*,int ) ;
 int ext4_mb_add_groupinfo (struct super_block*,int,struct ext4_group_desc*) ;
 int ext4_set_bitmap_checksums (struct super_block*,int,struct ext4_group_desc*,struct ext4_new_group_data*) ;
 int ext4_std_error (struct super_block*,int) ;
 int memset (struct ext4_group_desc*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ext4_setup_new_descs(handle_t *handle, struct super_block *sb,
    struct ext4_new_flex_group_data *flex_gd)
{
 struct ext4_new_group_data *group_data = flex_gd->groups;
 struct ext4_group_desc *gdp;
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct buffer_head *gdb_bh;
 ext4_group_t group;
 __u16 *bg_flags = flex_gd->bg_flags;
 int i, gdb_off, gdb_num, err = 0;


 for (i = 0; i < flex_gd->count; i++, group_data++, bg_flags++) {
  group = group_data->group;

  gdb_off = group % EXT4_DESC_PER_BLOCK(sb);
  gdb_num = group / EXT4_DESC_PER_BLOCK(sb);




  gdb_bh = sbi->s_group_desc[gdb_num];

  gdp = (struct ext4_group_desc *)(gdb_bh->b_data +
       gdb_off * EXT4_DESC_SIZE(sb));

  memset(gdp, 0, EXT4_DESC_SIZE(sb));
  ext4_block_bitmap_set(sb, gdp, group_data->block_bitmap);
  ext4_inode_bitmap_set(sb, gdp, group_data->inode_bitmap);
  err = ext4_set_bitmap_checksums(sb, group, gdp, group_data);
  if (err) {
   ext4_std_error(sb, err);
   break;
  }

  ext4_inode_table_set(sb, gdp, group_data->inode_table);
  ext4_free_group_clusters_set(sb, gdp,
          group_data->free_clusters_count);
  ext4_free_inodes_set(sb, gdp, EXT4_INODES_PER_GROUP(sb));
  if (ext4_has_group_desc_csum(sb))
   ext4_itable_unused_set(sb, gdp,
            EXT4_INODES_PER_GROUP(sb));
  gdp->bg_flags = cpu_to_le16(*bg_flags);
  ext4_group_desc_csum_set(sb, group, gdp);

  err = ext4_handle_dirty_metadata(handle, ((void*)0), gdb_bh);
  if (unlikely(err)) {
   ext4_std_error(sb, err);
   break;
  }





  err = ext4_mb_add_groupinfo(sb, group, gdp);
  if (err)
   break;
 }
 return err;
}
