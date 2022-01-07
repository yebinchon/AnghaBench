
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nat_entry_set {scalar_t__ entry_cnt; int set; int set_list; int entry_list; } ;
struct TYPE_2__ {int nid; } ;
struct nat_entry {TYPE_1__ ni; } ;
struct f2fs_nm_info {int nat_set_root; } ;
typedef int nid_t ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int NAT_BLOCK_OFFSET (int ) ;
 struct nat_entry_set* f2fs_kmem_cache_alloc (int ,int ) ;
 int f2fs_radix_tree_insert (int *,int ,struct nat_entry_set*) ;
 int nat_entry_set_slab ;
 struct nat_entry_set* radix_tree_lookup (int *,int ) ;

__attribute__((used)) static struct nat_entry_set *__grab_nat_entry_set(struct f2fs_nm_info *nm_i,
       struct nat_entry *ne)
{
 nid_t set = NAT_BLOCK_OFFSET(ne->ni.nid);
 struct nat_entry_set *head;

 head = radix_tree_lookup(&nm_i->nat_set_root, set);
 if (!head) {
  head = f2fs_kmem_cache_alloc(nat_entry_set_slab, GFP_NOFS);

  INIT_LIST_HEAD(&head->entry_list);
  INIT_LIST_HEAD(&head->set_list);
  head->set = set;
  head->entry_cnt = 0;
  f2fs_radix_tree_insert(&nm_i->nat_set_root, set, head);
 }
 return head;
}
