
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_sb_info {int s_desc_per_block; TYPE_1__* s_es; } ;
typedef int ext4_group_t ;
struct TYPE_2__ {int s_reserved_gdt_blocks; int s_first_meta_bg; } ;


 int EXT4_NUM_B2C (struct ext4_sb_info*,unsigned int) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 unsigned int ext4_bg_has_super (struct super_block*,int) ;
 scalar_t__ ext4_bg_num_gdb (struct super_block*,int) ;
 int ext4_has_feature_meta_bg (struct super_block*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static unsigned ext4_num_base_meta_clusters(struct super_block *sb,
         ext4_group_t block_group)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 unsigned num;


 num = ext4_bg_has_super(sb, block_group);

 if (!ext4_has_feature_meta_bg(sb) ||
     block_group < le32_to_cpu(sbi->s_es->s_first_meta_bg) *
     sbi->s_desc_per_block) {
  if (num) {
   num += ext4_bg_num_gdb(sb, block_group);
   num += le16_to_cpu(sbi->s_es->s_reserved_gdt_blocks);
  }
 } else {
  num += ext4_bg_num_gdb(sb, block_group);
 }
 return EXT4_NUM_B2C(sbi, num);
}
