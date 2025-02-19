
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int log_blocks_per_seg; } ;
struct f2fs_nm_info {int nat_blkaddr; } ;
typedef int pgoff_t ;


 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;

__attribute__((used)) static inline pgoff_t next_nat_addr(struct f2fs_sb_info *sbi,
      pgoff_t block_addr)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);

 block_addr -= nm_i->nat_blkaddr;
 block_addr ^= 1 << sbi->log_blocks_per_seg;
 return block_addr + nm_i->nat_blkaddr;
}
