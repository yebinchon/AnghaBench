
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_nid {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int nid_list_lock; int available_nids; } ;
typedef int nid_t ;


 int FREE_NID ;
 int FREE_NIDS ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 int PREALLOC_NID ;
 struct free_nid* __lookup_free_nid_list (struct f2fs_nm_info*,int ) ;
 int __move_free_nid (struct f2fs_sb_info*,struct free_nid*,int ,int ) ;
 int __remove_free_nid (struct f2fs_sb_info*,struct free_nid*,int ) ;
 int f2fs_available_free_memory (struct f2fs_sb_info*,int ) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int free_nid_slab ;
 int kmem_cache_free (int ,struct free_nid*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int update_free_nid_bitmap (struct f2fs_sb_info*,int ,int,int) ;

void f2fs_alloc_nid_failed(struct f2fs_sb_info *sbi, nid_t nid)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 struct free_nid *i;
 bool need_free = 0;

 if (!nid)
  return;

 spin_lock(&nm_i->nid_list_lock);
 i = __lookup_free_nid_list(nm_i, nid);
 f2fs_bug_on(sbi, !i);

 if (!f2fs_available_free_memory(sbi, FREE_NIDS)) {
  __remove_free_nid(sbi, i, PREALLOC_NID);
  need_free = 1;
 } else {
  __move_free_nid(sbi, i, PREALLOC_NID, FREE_NID);
 }

 nm_i->available_nids++;

 update_free_nid_bitmap(sbi, nid, 1, 0);

 spin_unlock(&nm_i->nid_list_lock);

 if (need_free)
  kmem_cache_free(free_nid_slab, i);
}
