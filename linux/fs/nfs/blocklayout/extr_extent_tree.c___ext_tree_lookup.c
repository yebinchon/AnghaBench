
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct pnfs_block_extent {scalar_t__ be_f_offset; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ ext_f_end (struct pnfs_block_extent*) ;
 struct pnfs_block_extent* ext_node (struct rb_node*) ;

__attribute__((used)) static bool
__ext_tree_lookup(struct rb_root *root, sector_t isect,
  struct pnfs_block_extent *ret)
{
 struct rb_node *node;
 struct pnfs_block_extent *be;

 node = root->rb_node;
 while (node) {
  be = ext_node(node);
  if (isect < be->be_f_offset)
   node = node->rb_left;
  else if (isect >= ext_f_end(be))
   node = node->rb_right;
  else {
   *ret = *be;
   return 1;
  }
 }

 return 0;
}
