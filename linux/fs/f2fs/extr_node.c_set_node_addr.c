
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_info {scalar_t__ blk_addr; int ino; int nid; } ;
struct nat_entry {int ni; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int nat_tree_lock; } ;
typedef scalar_t__ block_t ;


 int HAS_FSYNCED_INODE ;
 int HAS_LAST_FSYNC ;
 int IS_CHECKPOINTED ;
 scalar_t__ NEW_ADDR ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 scalar_t__ NULL_ADDR ;
 struct nat_entry* __alloc_nat_entry (int ,int) ;
 int __free_nat_entry (struct nat_entry*) ;
 struct nat_entry* __init_nat_entry (struct f2fs_nm_info*,struct nat_entry*,int *,int) ;
 scalar_t__ __is_valid_data_blkaddr (scalar_t__) ;
 struct nat_entry* __lookup_nat_cache (struct f2fs_nm_info*,int ) ;
 int __set_nat_cache_dirty (struct f2fs_nm_info*,struct nat_entry*) ;
 int copy_node_info (int *,struct node_info*) ;
 int down_write (int *) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int inc_node_version (unsigned char) ;
 scalar_t__ nat_get_blkaddr (struct nat_entry*) ;
 unsigned char nat_get_version (struct nat_entry*) ;
 int nat_set_blkaddr (struct nat_entry*,scalar_t__) ;
 int nat_set_version (struct nat_entry*,int ) ;
 int set_nat_flag (struct nat_entry*,int ,int) ;
 int up_write (int *) ;

__attribute__((used)) static void set_node_addr(struct f2fs_sb_info *sbi, struct node_info *ni,
   block_t new_blkaddr, bool fsync_done)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 struct nat_entry *e;
 struct nat_entry *new = __alloc_nat_entry(ni->nid, 1);

 down_write(&nm_i->nat_tree_lock);
 e = __lookup_nat_cache(nm_i, ni->nid);
 if (!e) {
  e = __init_nat_entry(nm_i, new, ((void*)0), 1);
  copy_node_info(&e->ni, ni);
  f2fs_bug_on(sbi, ni->blk_addr == NEW_ADDR);
 } else if (new_blkaddr == NEW_ADDR) {





  copy_node_info(&e->ni, ni);
  f2fs_bug_on(sbi, ni->blk_addr != NULL_ADDR);
 }

 if (e != new)
  __free_nat_entry(new);


 f2fs_bug_on(sbi, nat_get_blkaddr(e) != ni->blk_addr);
 f2fs_bug_on(sbi, nat_get_blkaddr(e) == NULL_ADDR &&
   new_blkaddr == NULL_ADDR);
 f2fs_bug_on(sbi, nat_get_blkaddr(e) == NEW_ADDR &&
   new_blkaddr == NEW_ADDR);
 f2fs_bug_on(sbi, __is_valid_data_blkaddr(nat_get_blkaddr(e)) &&
   new_blkaddr == NEW_ADDR);


 if (nat_get_blkaddr(e) != NEW_ADDR && new_blkaddr == NULL_ADDR) {
  unsigned char version = nat_get_version(e);
  nat_set_version(e, inc_node_version(version));
 }


 nat_set_blkaddr(e, new_blkaddr);
 if (!__is_valid_data_blkaddr(new_blkaddr))
  set_nat_flag(e, IS_CHECKPOINTED, 0);
 __set_nat_cache_dirty(nm_i, e);


 if (ni->nid != ni->ino)
  e = __lookup_nat_cache(nm_i, ni->ino);
 if (e) {
  if (fsync_done && ni->nid == ni->ino)
   set_nat_flag(e, HAS_FSYNCED_INODE, 1);
  set_nat_flag(e, HAS_LAST_FSYNC, fsync_done);
 }
 up_write(&nm_i->nat_tree_lock);
}
