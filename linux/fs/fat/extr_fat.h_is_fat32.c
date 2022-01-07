
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_sb_info {int fat_bits; } ;



__attribute__((used)) static inline bool is_fat32(const struct msdos_sb_info *sbi)
{
 return sbi->fat_bits == 32;
}
