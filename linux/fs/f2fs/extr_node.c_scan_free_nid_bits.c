
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {unsigned int nat_blocks; scalar_t__* nid_cnt; int nat_tree_lock; int * free_nid_bitmap; int * free_nid_count; int nat_block_bitmap; } ;
typedef unsigned int nid_t ;


 size_t FREE_NID ;
 scalar_t__ MAX_FREE_NIDS ;
 unsigned int NAT_ENTRY_PER_BLOCK ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 int add_free_nid (struct f2fs_sb_info*,unsigned int,int,int) ;
 int down_read (int *) ;
 unsigned int find_next_bit_le (int ,unsigned int,unsigned int) ;
 int scan_curseg_cache (struct f2fs_sb_info*) ;
 int test_bit_le (unsigned int,int ) ;
 int up_read (int *) ;

__attribute__((used)) static void scan_free_nid_bits(struct f2fs_sb_info *sbi)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 unsigned int i, idx;
 nid_t nid;

 down_read(&nm_i->nat_tree_lock);

 for (i = 0; i < nm_i->nat_blocks; i++) {
  if (!test_bit_le(i, nm_i->nat_block_bitmap))
   continue;
  if (!nm_i->free_nid_count[i])
   continue;
  for (idx = 0; idx < NAT_ENTRY_PER_BLOCK; idx++) {
   idx = find_next_bit_le(nm_i->free_nid_bitmap[i],
      NAT_ENTRY_PER_BLOCK, idx);
   if (idx >= NAT_ENTRY_PER_BLOCK)
    break;

   nid = i * NAT_ENTRY_PER_BLOCK + idx;
   add_free_nid(sbi, nid, 1, 0);

   if (nm_i->nid_cnt[FREE_NID] >= MAX_FREE_NIDS)
    goto out;
  }
 }
out:
 scan_curseg_cache(sbi);

 up_read(&nm_i->nat_tree_lock);
}
