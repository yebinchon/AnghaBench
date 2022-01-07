
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_entry {int list; struct inode* inode; } ;
struct inode {int i_ino; } ;
struct gc_inode_list {int ilist; int iroot; } ;


 int GFP_NOFS ;
 int f2fs_inode_entry_slab ;
 struct inode_entry* f2fs_kmem_cache_alloc (int ,int ) ;
 int f2fs_radix_tree_insert (int *,int ,struct inode_entry*) ;
 struct inode* find_gc_inode (struct gc_inode_list*,int ) ;
 int iput (struct inode*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void add_gc_inode(struct gc_inode_list *gc_list, struct inode *inode)
{
 struct inode_entry *new_ie;

 if (inode == find_gc_inode(gc_list, inode->i_ino)) {
  iput(inode);
  return;
 }
 new_ie = f2fs_kmem_cache_alloc(f2fs_inode_entry_slab, GFP_NOFS);
 new_ie->inode = inode;

 f2fs_radix_tree_insert(&gc_list->iroot, inode->i_ino, new_ie);
 list_add_tail(&new_ie->list, &gc_list->ilist);
}
