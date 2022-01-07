
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_nid {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int nid_list_lock; } ;
typedef int nid_t ;


 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 int PREALLOC_NID ;
 struct free_nid* __lookup_free_nid_list (struct f2fs_nm_info*,int ) ;
 int __remove_free_nid (struct f2fs_sb_info*,struct free_nid*,int ) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int free_nid_slab ;
 int kmem_cache_free (int ,struct free_nid*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void f2fs_alloc_nid_done(struct f2fs_sb_info *sbi, nid_t nid)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 struct free_nid *i;

 spin_lock(&nm_i->nid_list_lock);
 i = __lookup_free_nid_list(nm_i, nid);
 f2fs_bug_on(sbi, !i);
 __remove_free_nid(sbi, i, PREALLOC_NID);
 spin_unlock(&nm_i->nid_list_lock);

 kmem_cache_free(free_nid_slab, i);
}
