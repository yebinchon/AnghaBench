
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct msdos_sb_info {int fatent_shift; int fat_bits; int * fatent_ops; int fat_lock; } ;


 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int fat12_ops ;
 int fat16_ops ;
 int fat32_ops ;
 int fat_fs_error (struct super_block*,char*,int ) ;
 scalar_t__ is_fat12 (struct msdos_sb_info*) ;
 scalar_t__ is_fat16 (struct msdos_sb_info*) ;
 scalar_t__ is_fat32 (struct msdos_sb_info*) ;
 int mutex_init (int *) ;

void fat_ent_access_init(struct super_block *sb)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);

 mutex_init(&sbi->fat_lock);

 if (is_fat32(sbi)) {
  sbi->fatent_shift = 2;
  sbi->fatent_ops = &fat32_ops;
 } else if (is_fat16(sbi)) {
  sbi->fatent_shift = 1;
  sbi->fatent_ops = &fat16_ops;
 } else if (is_fat12(sbi)) {
  sbi->fatent_shift = -1;
  sbi->fatent_ops = &fat12_ops;
 } else {
  fat_fs_error(sb, "invalid FAT variant, %u bits", sbi->fat_bits);
 }
}
