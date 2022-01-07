
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_entry {struct inode* inode; } ;
struct inode {int dummy; } ;
struct gc_inode_list {int iroot; } ;
typedef int nid_t ;


 struct inode_entry* radix_tree_lookup (int *,int ) ;

__attribute__((used)) static struct inode *find_gc_inode(struct gc_inode_list *gc_list, nid_t ino)
{
 struct inode_entry *ie;

 ie = radix_tree_lookup(&gc_list->iroot, ino);
 if (ie)
  return ie->inode;
 return ((void*)0);
}
