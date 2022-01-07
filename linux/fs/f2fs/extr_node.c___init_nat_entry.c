
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry {int list; int ni; } ;
struct f2fs_nm_info {int nat_cnt; int nat_list_lock; int nat_entries; int nat_root; } ;
struct f2fs_nat_entry {int dummy; } ;


 int f2fs_radix_tree_insert (int *,int ,struct nat_entry*) ;
 int list_add_tail (int *,int *) ;
 int nat_get_nid (struct nat_entry*) ;
 int node_info_from_raw_nat (int *,struct f2fs_nat_entry*) ;
 scalar_t__ radix_tree_insert (int *,int ,struct nat_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nat_entry *__init_nat_entry(struct f2fs_nm_info *nm_i,
 struct nat_entry *ne, struct f2fs_nat_entry *raw_ne, bool no_fail)
{
 if (no_fail)
  f2fs_radix_tree_insert(&nm_i->nat_root, nat_get_nid(ne), ne);
 else if (radix_tree_insert(&nm_i->nat_root, nat_get_nid(ne), ne))
  return ((void*)0);

 if (raw_ne)
  node_info_from_raw_nat(&ne->ni, raw_ne);

 spin_lock(&nm_i->nat_list_lock);
 list_add_tail(&ne->list, &nm_i->nat_entries);
 spin_unlock(&nm_i->nat_list_lock);

 nm_i->nat_cnt++;
 return ne;
}
