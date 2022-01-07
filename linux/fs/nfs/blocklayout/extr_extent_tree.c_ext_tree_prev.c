
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct pnfs_block_extent {int be_node; } ;


 struct pnfs_block_extent* ext_node (struct rb_node*) ;
 struct rb_node* rb_prev (int *) ;

__attribute__((used)) static struct pnfs_block_extent *
ext_tree_prev(struct pnfs_block_extent *be)
{
 struct rb_node *node = rb_prev(&be->be_node);
 return node ? ext_node(node) : ((void*)0);
}
