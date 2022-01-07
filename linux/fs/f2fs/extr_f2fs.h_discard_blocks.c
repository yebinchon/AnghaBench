
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int discard_blks; } ;
typedef int block_t ;



__attribute__((used)) static inline block_t discard_blocks(struct f2fs_sb_info *sbi)
{
 return sbi->discard_blks;
}
