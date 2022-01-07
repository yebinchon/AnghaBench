
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry {int dummy; } ;
struct free_nid {scalar_t__ state; int nid; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int nid_list_lock; int available_nids; } ;
typedef int nid_t ;


 int EINVAL ;
 scalar_t__ FREE_NID ;
 int GFP_NOFS ;
 int IS_CHECKPOINTED ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 scalar_t__ NULL_ADDR ;
 int __GFP_NOFAIL ;
 int __insert_free_nid (struct f2fs_sb_info*,struct free_nid*,scalar_t__) ;
 struct free_nid* __lookup_free_nid_list (struct f2fs_nm_info*,int ) ;
 struct nat_entry* __lookup_nat_cache (struct f2fs_nm_info*,int ) ;
 int f2fs_check_nid_range (struct f2fs_sb_info*,int ) ;
 struct free_nid* f2fs_kmem_cache_alloc (int ,int) ;
 int free_nid_slab ;
 int get_nat_flag (struct nat_entry*,int ) ;
 int kmem_cache_free (int ,struct free_nid*) ;
 scalar_t__ nat_get_blkaddr (struct nat_entry*) ;
 int radix_tree_preload (int) ;
 int radix_tree_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int update_free_nid_bitmap (struct f2fs_sb_info*,int ,int,int) ;

__attribute__((used)) static bool add_free_nid(struct f2fs_sb_info *sbi,
    nid_t nid, bool build, bool update)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 struct free_nid *i, *e;
 struct nat_entry *ne;
 int err = -EINVAL;
 bool ret = 0;


 if (unlikely(nid == 0))
  return 0;

 if (unlikely(f2fs_check_nid_range(sbi, nid)))
  return 0;

 i = f2fs_kmem_cache_alloc(free_nid_slab, GFP_NOFS);
 i->nid = nid;
 i->state = FREE_NID;

 radix_tree_preload(GFP_NOFS | __GFP_NOFAIL);

 spin_lock(&nm_i->nid_list_lock);

 if (build) {
  ne = __lookup_nat_cache(nm_i, nid);
  if (ne && (!get_nat_flag(ne, IS_CHECKPOINTED) ||
    nat_get_blkaddr(ne) != NULL_ADDR))
   goto err_out;

  e = __lookup_free_nid_list(nm_i, nid);
  if (e) {
   if (e->state == FREE_NID)
    ret = 1;
   goto err_out;
  }
 }
 ret = 1;
 err = __insert_free_nid(sbi, i, FREE_NID);
err_out:
 if (update) {
  update_free_nid_bitmap(sbi, nid, ret, build);
  if (!build)
   nm_i->available_nids++;
 }
 spin_unlock(&nm_i->nid_list_lock);
 radix_tree_preload_end();

 if (err)
  kmem_cache_free(free_nid_slab, i);
 return ret;
}
