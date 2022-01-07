
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_super_block {int s_min_extra_isize; int s_want_extra_isize; } ;
struct ext4_sb_info {scalar_t__ s_inode_size; scalar_t__ s_want_extra_isize; struct ext4_super_block* s_es; } ;
struct ext4_inode {int dummy; } ;


 scalar_t__ EXT4_GOOD_OLD_INODE_SIZE ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int KERN_INFO ;
 scalar_t__ ext4_has_feature_extra_isize (struct super_block*) ;
 int ext4_msg (struct super_block*,int ,char*) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static void ext4_clamp_want_extra_isize(struct super_block *sb)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct ext4_super_block *es = sbi->s_es;


 if (sbi->s_inode_size > EXT4_GOOD_OLD_INODE_SIZE &&
     sbi->s_want_extra_isize == 0) {
  sbi->s_want_extra_isize = sizeof(struct ext4_inode) -
           EXT4_GOOD_OLD_INODE_SIZE;
  if (ext4_has_feature_extra_isize(sb)) {
   if (sbi->s_want_extra_isize <
       le16_to_cpu(es->s_want_extra_isize))
    sbi->s_want_extra_isize =
     le16_to_cpu(es->s_want_extra_isize);
   if (sbi->s_want_extra_isize <
       le16_to_cpu(es->s_min_extra_isize))
    sbi->s_want_extra_isize =
     le16_to_cpu(es->s_min_extra_isize);
  }
 }

 if (EXT4_GOOD_OLD_INODE_SIZE + sbi->s_want_extra_isize >
       sbi->s_inode_size) {
  sbi->s_want_extra_isize = sizeof(struct ext4_inode) -
             EXT4_GOOD_OLD_INODE_SIZE;
  ext4_msg(sb, KERN_INFO,
    "required extra inode space not available");
 }
}
