
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry {int list; } ;
struct f2fs_nm_info {int nat_list_lock; int nat_entries; int nat_root; } ;
typedef int nid_t ;


 int IS_DIRTY ;
 int get_nat_flag (struct nat_entry*,int ) ;
 int list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 struct nat_entry* radix_tree_lookup (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nat_entry *__lookup_nat_cache(struct f2fs_nm_info *nm_i, nid_t n)
{
 struct nat_entry *ne;

 ne = radix_tree_lookup(&nm_i->nat_root, n);


 if (ne && !get_nat_flag(ne, IS_DIRTY)) {
  spin_lock(&nm_i->nat_list_lock);
  if (!list_empty(&ne->list))
   list_move_tail(&ne->list, &nm_i->nat_entries);
  spin_unlock(&nm_i->nat_list_lock);
 }

 return ne;
}
