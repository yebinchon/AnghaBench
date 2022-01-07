
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry {int dummy; } ;
typedef int nid_t ;


 int GFP_F2FS_ZERO ;
 struct nat_entry* f2fs_kmem_cache_alloc (int ,int ) ;
 struct nat_entry* kmem_cache_alloc (int ,int ) ;
 int nat_entry_slab ;
 int nat_reset_flag (struct nat_entry*) ;
 int nat_set_nid (struct nat_entry*,int ) ;

__attribute__((used)) static struct nat_entry *__alloc_nat_entry(nid_t nid, bool no_fail)
{
 struct nat_entry *new;

 if (no_fail)
  new = f2fs_kmem_cache_alloc(nat_entry_slab, GFP_F2FS_ZERO);
 else
  new = kmem_cache_alloc(nat_entry_slab, GFP_F2FS_ZERO);
 if (new) {
  nat_set_nid(new, nid);
  nat_reset_flag(new);
 }
 return new;
}
