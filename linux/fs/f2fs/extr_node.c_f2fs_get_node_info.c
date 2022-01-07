
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct node_info {size_t nid; int version; int blk_addr; int ino; } ;
struct nat_entry {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int nat_tree_lock; } ;
struct f2fs_nat_entry {int block_addr; } ;
struct f2fs_nat_block {struct f2fs_nat_entry* entries; } ;
struct f2fs_journal {int dummy; } ;
struct curseg_info {int journal_rwsem; struct f2fs_journal* journal; } ;
typedef int pgoff_t ;
typedef size_t nid_t ;
typedef int block_t ;


 int CURSEG_HOT_DATA ;
 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int ) ;
 int DATA_GENERIC_ENHANCE ;
 int EFAULT ;
 scalar_t__ IS_ERR (struct page*) ;
 int NAT_JOURNAL ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 int PTR_ERR (struct page*) ;
 size_t START_NID (size_t) ;
 scalar_t__ __is_valid_data_blkaddr (int ) ;
 struct nat_entry* __lookup_nat_cache (struct f2fs_nm_info*,size_t) ;
 int cache_nat_entry (struct f2fs_sb_info*,size_t,struct f2fs_nat_entry*) ;
 int current_nat_addr (struct f2fs_sb_info*,size_t) ;
 int down_read (int *) ;
 struct page* f2fs_get_meta_page (struct f2fs_sb_info*,int ) ;
 int f2fs_is_valid_blkaddr (struct f2fs_sb_info*,int ,int ) ;
 int f2fs_lookup_journal_in_cursum (struct f2fs_journal*,int ,size_t,int ) ;
 int f2fs_put_page (struct page*,int) ;
 int le32_to_cpu (int ) ;
 int memset (struct f2fs_nat_entry*,int ,int) ;
 int nat_get_blkaddr (struct nat_entry*) ;
 int nat_get_ino (struct nat_entry*) ;
 int nat_get_version (struct nat_entry*) ;
 struct f2fs_nat_entry nat_in_journal (struct f2fs_journal*,int) ;
 int node_info_from_raw_nat (struct node_info*,struct f2fs_nat_entry*) ;
 scalar_t__ page_address (struct page*) ;
 int up_read (int *) ;

int f2fs_get_node_info(struct f2fs_sb_info *sbi, nid_t nid,
      struct node_info *ni)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 struct curseg_info *curseg = CURSEG_I(sbi, CURSEG_HOT_DATA);
 struct f2fs_journal *journal = curseg->journal;
 nid_t start_nid = START_NID(nid);
 struct f2fs_nat_block *nat_blk;
 struct page *page = ((void*)0);
 struct f2fs_nat_entry ne;
 struct nat_entry *e;
 pgoff_t index;
 block_t blkaddr;
 int i;

 ni->nid = nid;


 down_read(&nm_i->nat_tree_lock);
 e = __lookup_nat_cache(nm_i, nid);
 if (e) {
  ni->ino = nat_get_ino(e);
  ni->blk_addr = nat_get_blkaddr(e);
  ni->version = nat_get_version(e);
  up_read(&nm_i->nat_tree_lock);
  return 0;
 }

 memset(&ne, 0, sizeof(struct f2fs_nat_entry));


 down_read(&curseg->journal_rwsem);
 i = f2fs_lookup_journal_in_cursum(journal, NAT_JOURNAL, nid, 0);
 if (i >= 0) {
  ne = nat_in_journal(journal, i);
  node_info_from_raw_nat(ni, &ne);
 }
 up_read(&curseg->journal_rwsem);
 if (i >= 0) {
  up_read(&nm_i->nat_tree_lock);
  goto cache;
 }


 index = current_nat_addr(sbi, nid);
 up_read(&nm_i->nat_tree_lock);

 page = f2fs_get_meta_page(sbi, index);
 if (IS_ERR(page))
  return PTR_ERR(page);

 nat_blk = (struct f2fs_nat_block *)page_address(page);
 ne = nat_blk->entries[nid - start_nid];
 node_info_from_raw_nat(ni, &ne);
 f2fs_put_page(page, 1);
cache:
 blkaddr = le32_to_cpu(ne.block_addr);
 if (__is_valid_data_blkaddr(blkaddr) &&
  !f2fs_is_valid_blkaddr(sbi, blkaddr, DATA_GENERIC_ENHANCE))
  return -EFAULT;


 cache_nat_entry(sbi, nid, &ne);
 return 0;
}
