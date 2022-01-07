
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omfs_sb_info {int s_block_shift; } ;
typedef int sector_t ;



__attribute__((used)) static inline sector_t clus_to_blk(struct omfs_sb_info *sbi, sector_t block)
{
 return block << sbi->s_block_shift;
}
