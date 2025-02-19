
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_sb_info {scalar_t__ s_desc_size; int s_csum_seed; } ;
struct ext4_group_desc {int bg_block_bitmap_csum_hi; int bg_block_bitmap_csum_lo; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int ext4_group_t ;
typedef int __u8 ;
typedef int __u32 ;


 scalar_t__ EXT4_BG_BLOCK_BITMAP_CSUM_HI_END ;
 int EXT4_CLUSTERS_PER_GROUP (struct super_block*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int ext4_chksum (struct ext4_sb_info*,int ,int *,int) ;
 int ext4_has_metadata_csum (struct super_block*) ;
 int le16_to_cpu (int ) ;

int ext4_block_bitmap_csum_verify(struct super_block *sb, ext4_group_t group,
      struct ext4_group_desc *gdp,
      struct buffer_head *bh)
{
 __u32 hi;
 __u32 provided, calculated;
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 int sz = EXT4_CLUSTERS_PER_GROUP(sb) / 8;

 if (!ext4_has_metadata_csum(sb))
  return 1;

 provided = le16_to_cpu(gdp->bg_block_bitmap_csum_lo);
 calculated = ext4_chksum(sbi, sbi->s_csum_seed, (__u8 *)bh->b_data, sz);
 if (sbi->s_desc_size >= EXT4_BG_BLOCK_BITMAP_CSUM_HI_END) {
  hi = le16_to_cpu(gdp->bg_block_bitmap_csum_hi);
  provided |= (hi << 16);
 } else
  calculated &= 0xFFFF;

 if (provided == calculated)
  return 1;

 return 0;
}
