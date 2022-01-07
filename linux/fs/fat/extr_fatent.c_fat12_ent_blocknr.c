
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct msdos_sb_info {scalar_t__ fat_start; } ;
typedef scalar_t__ sector_t ;


 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int WARN_ON (int) ;
 int fat_valid_entry (struct msdos_sb_info*,int) ;

__attribute__((used)) static void fat12_ent_blocknr(struct super_block *sb, int entry,
         int *offset, sector_t *blocknr)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);
 int bytes = entry + (entry >> 1);
 WARN_ON(!fat_valid_entry(sbi, entry));
 *offset = bytes & (sb->s_blocksize - 1);
 *blocknr = sbi->fat_start + (bytes >> sb->s_blocksize_bits);
}
