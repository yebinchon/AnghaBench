
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_new_group_data {int block_bitmap; int inode_bitmap; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int ext4_group_t ;


 int EIO ;
 int EXT4_INODES_PER_GROUP (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int ext4_block_bitmap_csum_set (struct super_block*,int ,struct ext4_group_desc*,struct buffer_head*) ;
 struct buffer_head* ext4_get_bitmap (struct super_block*,int ) ;
 int ext4_has_metadata_csum (struct super_block*) ;
 int ext4_inode_bitmap_csum_set (struct super_block*,int ,struct ext4_group_desc*,struct buffer_head*,int) ;

__attribute__((used)) static int ext4_set_bitmap_checksums(struct super_block *sb,
         ext4_group_t group,
         struct ext4_group_desc *gdp,
         struct ext4_new_group_data *group_data)
{
 struct buffer_head *bh;

 if (!ext4_has_metadata_csum(sb))
  return 0;

 bh = ext4_get_bitmap(sb, group_data->inode_bitmap);
 if (!bh)
  return -EIO;
 ext4_inode_bitmap_csum_set(sb, group, gdp, bh,
       EXT4_INODES_PER_GROUP(sb) / 8);
 brelse(bh);

 bh = ext4_get_bitmap(sb, group_data->block_bitmap);
 if (!bh)
  return -EIO;
 ext4_block_bitmap_csum_set(sb, group, gdp, bh);
 brelse(bh);

 return 0;
}
