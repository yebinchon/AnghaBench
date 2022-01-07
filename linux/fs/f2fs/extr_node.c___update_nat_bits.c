
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int full_nat_bits; int empty_nat_bits; } ;
struct f2fs_nat_block {TYPE_1__* entries; } ;
typedef int nid_t ;
struct TYPE_2__ {int block_addr; } ;


 int NAT_ENTRY_PER_BLOCK ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 scalar_t__ NULL_ADDR ;
 int __clear_bit_le (unsigned int,int ) ;
 int __set_bit_le (unsigned int,int ) ;
 int enabled_nat_bits (struct f2fs_sb_info*,int *) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct f2fs_nat_block* page_address (struct page*) ;

__attribute__((used)) static void __update_nat_bits(struct f2fs_sb_info *sbi, nid_t start_nid,
      struct page *page)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 unsigned int nat_index = start_nid / NAT_ENTRY_PER_BLOCK;
 struct f2fs_nat_block *nat_blk = page_address(page);
 int valid = 0;
 int i = 0;

 if (!enabled_nat_bits(sbi, ((void*)0)))
  return;

 if (nat_index == 0) {
  valid = 1;
  i = 1;
 }
 for (; i < NAT_ENTRY_PER_BLOCK; i++) {
  if (le32_to_cpu(nat_blk->entries[i].block_addr) != NULL_ADDR)
   valid++;
 }
 if (valid == 0) {
  __set_bit_le(nat_index, nm_i->empty_nat_bits);
  __clear_bit_le(nat_index, nm_i->full_nat_bits);
  return;
 }

 __clear_bit_le(nat_index, nm_i->empty_nat_bits);
 if (valid == NAT_ENTRY_PER_BLOCK)
  __set_bit_le(nat_index, nm_i->full_nat_bits);
 else
  __clear_bit_le(nat_index, nm_i->full_nat_bits);
}
