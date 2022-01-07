
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int nat_tree_lock; } ;
struct f2fs_nat_entry {scalar_t__ version; int block_addr; int ino; } ;
typedef int nid_t ;


 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 struct nat_entry* __alloc_nat_entry (int ,int) ;
 int __free_nat_entry (struct nat_entry*) ;
 struct nat_entry* __init_nat_entry (struct f2fs_nm_info*,struct nat_entry*,struct f2fs_nat_entry*,int) ;
 struct nat_entry* __lookup_nat_cache (struct f2fs_nm_info*,int ) ;
 int down_write (int *) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ nat_get_blkaddr (struct nat_entry*) ;
 scalar_t__ nat_get_ino (struct nat_entry*) ;
 scalar_t__ nat_get_version (struct nat_entry*) ;
 int up_write (int *) ;

__attribute__((used)) static void cache_nat_entry(struct f2fs_sb_info *sbi, nid_t nid,
      struct f2fs_nat_entry *ne)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 struct nat_entry *new, *e;

 new = __alloc_nat_entry(nid, 0);
 if (!new)
  return;

 down_write(&nm_i->nat_tree_lock);
 e = __lookup_nat_cache(nm_i, nid);
 if (!e)
  e = __init_nat_entry(nm_i, new, ne, 0);
 else
  f2fs_bug_on(sbi, nat_get_ino(e) != le32_to_cpu(ne->ino) ||
    nat_get_blkaddr(e) !=
     le32_to_cpu(ne->block_addr) ||
    nat_get_version(e) != ne->version);
 up_write(&nm_i->nat_tree_lock);
 if (e != new)
  __free_nat_entry(new);
}
