
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct msdos_sb_info {int fat_bits; unsigned long fat_length; } ;


 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int is_fat12 (struct msdos_sb_info*) ;

__attribute__((used)) static unsigned long calc_fat_clusters(struct super_block *sb)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);


 if (!is_fat12(sbi)) {
  unsigned long ent_per_sec = sb->s_blocksize * 8 / sbi->fat_bits;
  return ent_per_sec * sbi->fat_length;
 }

 return sbi->fat_length * sb->s_blocksize * 8 / sbi->fat_bits;
}
