
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int blocks_per_seg; } ;
struct f2fs_nm_info {int nat_blkaddr; int nat_bitmap; } ;
typedef int pgoff_t ;
typedef int nid_t ;


 int NAT_BLOCK_OFFSET (int ) ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_test_bit (int,int ) ;

__attribute__((used)) static inline pgoff_t current_nat_addr(struct f2fs_sb_info *sbi, nid_t start)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 pgoff_t block_off;
 pgoff_t block_addr;






 block_off = NAT_BLOCK_OFFSET(start);

 block_addr = (pgoff_t)(nm_i->nat_blkaddr +
  (block_off << 1) -
  (block_off & (sbi->blocks_per_seg - 1)));

 if (f2fs_test_bit(block_off, nm_i->nat_bitmap))
  block_addr += sbi->blocks_per_seg;

 return block_addr;
}
