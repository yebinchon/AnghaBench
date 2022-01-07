
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_sb_info {unsigned int s_group_info_size; struct ext4_group_info*** s_group_info; } ;
struct ext4_group_info {int dummy; } ;
typedef int ext4_group_t ;


 int ENOMEM ;
 int EXT4_DESC_PER_BLOCK (struct super_block*) ;
 int EXT4_DESC_PER_BLOCK_BITS (struct super_block*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int ext4_debug (char*,unsigned int) ;
 int ext4_msg (struct super_block*,int ,char*) ;
 int kvfree (struct ext4_group_info***) ;
 struct ext4_group_info*** kvzalloc (unsigned int,int ) ;
 int memcpy (struct ext4_group_info***,struct ext4_group_info***,int) ;
 unsigned int roundup_pow_of_two (int) ;

int ext4_mb_alloc_groupinfo(struct super_block *sb, ext4_group_t ngroups)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 unsigned size;
 struct ext4_group_info ***new_groupinfo;

 size = (ngroups + EXT4_DESC_PER_BLOCK(sb) - 1) >>
  EXT4_DESC_PER_BLOCK_BITS(sb);
 if (size <= sbi->s_group_info_size)
  return 0;

 size = roundup_pow_of_two(sizeof(*sbi->s_group_info) * size);
 new_groupinfo = kvzalloc(size, GFP_KERNEL);
 if (!new_groupinfo) {
  ext4_msg(sb, KERN_ERR, "can't allocate buddy meta group");
  return -ENOMEM;
 }
 if (sbi->s_group_info) {
  memcpy(new_groupinfo, sbi->s_group_info,
         sbi->s_group_info_size * sizeof(*sbi->s_group_info));
  kvfree(sbi->s_group_info);
 }
 sbi->s_group_info = new_groupinfo;
 sbi->s_group_info_size = size / sizeof(*sbi->s_group_info);
 ext4_debug("allocated s_groupinfo array for %d meta_bg's\n",
     sbi->s_group_info_size);
 return 0;
}
