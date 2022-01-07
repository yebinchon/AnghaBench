
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_sb_info {int dir_per_block_bits; int dir_per_block; } ;
typedef int sector_t ;
typedef int loff_t ;



__attribute__((used)) static inline void fat_get_blknr_offset(struct msdos_sb_info *sbi,
    loff_t i_pos, sector_t *blknr, int *offset)
{
 *blknr = i_pos >> sbi->dir_per_block_bits;
 *offset = i_pos & (sbi->dir_per_block - 1);
}
