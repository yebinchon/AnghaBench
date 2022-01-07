
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_nid {scalar_t__ state; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int nid_list_lock; } ;
typedef int nid_t ;


 scalar_t__ FREE_NID ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 struct free_nid* __lookup_free_nid_list (struct f2fs_nm_info*,int ) ;
 int __remove_free_nid (struct f2fs_sb_info*,struct free_nid*,scalar_t__) ;
 int free_nid_slab ;
 int kmem_cache_free (int ,struct free_nid*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void remove_free_nid(struct f2fs_sb_info *sbi, nid_t nid)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 struct free_nid *i;
 bool need_free = 0;

 spin_lock(&nm_i->nid_list_lock);
 i = __lookup_free_nid_list(nm_i, nid);
 if (i && i->state == FREE_NID) {
  __remove_free_nid(sbi, i, FREE_NID);
  need_free = 1;
 }
 spin_unlock(&nm_i->nid_list_lock);

 if (need_free)
  kmem_cache_free(free_nid_slab, i);
}
