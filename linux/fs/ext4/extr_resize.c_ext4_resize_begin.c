
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_sb_info {int s_mount_state; int s_ext4_flags; TYPE_1__* s_sbh; TYPE_2__* s_es; } ;
struct TYPE_4__ {int s_first_data_block; } ;
struct TYPE_3__ {scalar_t__ b_blocknr; } ;


 int CAP_SYS_RESOURCE ;
 int EBUSY ;
 int EPERM ;
 scalar_t__ EXT4_B2C (struct ext4_sb_info*,scalar_t__) ;
 int EXT4_ERROR_FS ;
 int EXT4_FLAGS_RESIZING ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int capable (int ) ;
 int ext4_warning (struct super_block*,char*,...) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;

int ext4_resize_begin(struct super_block *sb)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 int ret = 0;

 if (!capable(CAP_SYS_RESOURCE))
  return -EPERM;






 if (EXT4_B2C(sbi, sbi->s_sbh->b_blocknr) !=
     le32_to_cpu(EXT4_SB(sb)->s_es->s_first_data_block)) {
  ext4_warning(sb, "won't resize using backup superblock at %llu",
   (unsigned long long)EXT4_SB(sb)->s_sbh->b_blocknr);
  return -EPERM;
 }





 if (EXT4_SB(sb)->s_mount_state & EXT4_ERROR_FS) {
  ext4_warning(sb, "There are errors in the filesystem, "
        "so online resizing is not allowed");
  return -EPERM;
 }

 if (test_and_set_bit_lock(EXT4_FLAGS_RESIZING,
      &EXT4_SB(sb)->s_ext4_flags))
  ret = -EBUSY;

 return ret;
}
