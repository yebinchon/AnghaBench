
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;
struct pnfs_block_extent {int dummy; } ;


 struct pnfs_block_extent* ext_node (struct rb_node*) ;
 struct rb_node* rb_first (struct rb_root*) ;

__attribute__((used)) static struct pnfs_block_extent *
ext_tree_first(struct rb_root *root)
{
 struct rb_node *node = rb_first(root);
 return node ? ext_node(node) : ((void*)0);
}
