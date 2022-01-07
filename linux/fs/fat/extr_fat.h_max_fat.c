
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct super_block {int dummy; } ;
struct msdos_sb_info {int dummy; } ;


 int MAX_FAT12 ;
 int MAX_FAT16 ;
 int MAX_FAT32 ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 scalar_t__ is_fat16 (struct msdos_sb_info*) ;
 scalar_t__ is_fat32 (struct msdos_sb_info*) ;

__attribute__((used)) static inline u32 max_fat(struct super_block *sb)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);

 return is_fat32(sbi) ? MAX_FAT32 :
  is_fat16(sbi) ? MAX_FAT16 : MAX_FAT12;
}
