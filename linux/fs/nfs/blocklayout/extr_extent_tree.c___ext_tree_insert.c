
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct pnfs_block_extent {scalar_t__ be_f_offset; scalar_t__ be_state; int be_device; int be_node; scalar_t__ be_length; int be_v_offset; } ;


 int BUG () ;
 scalar_t__ PNFS_BLOCK_NONE_DATA ;
 scalar_t__ ext_can_merge (struct pnfs_block_extent*,struct pnfs_block_extent*) ;
 scalar_t__ ext_f_end (struct pnfs_block_extent*) ;
 struct pnfs_block_extent* ext_node (struct rb_node*) ;
 struct pnfs_block_extent* ext_try_to_merge_left (struct rb_root*,struct pnfs_block_extent*) ;
 struct pnfs_block_extent* ext_try_to_merge_right (struct rb_root*,struct pnfs_block_extent*) ;
 int kfree (struct pnfs_block_extent*) ;
 int nfs4_put_deviceid_node (int ) ;
 int rb_insert_color (int *,struct rb_root*) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;

__attribute__((used)) static void
__ext_tree_insert(struct rb_root *root,
  struct pnfs_block_extent *new, bool merge_ok)
{
 struct rb_node **p = &root->rb_node, *parent = ((void*)0);
 struct pnfs_block_extent *be;

 while (*p) {
  parent = *p;
  be = ext_node(parent);

  if (new->be_f_offset < be->be_f_offset) {
   if (merge_ok && ext_can_merge(new, be)) {
    be->be_f_offset = new->be_f_offset;
    if (be->be_state != PNFS_BLOCK_NONE_DATA)
     be->be_v_offset = new->be_v_offset;
    be->be_length += new->be_length;
    be = ext_try_to_merge_left(root, be);
    goto free_new;
   }
   p = &(*p)->rb_left;
  } else if (new->be_f_offset >= ext_f_end(be)) {
   if (merge_ok && ext_can_merge(be, new)) {
    be->be_length += new->be_length;
    be = ext_try_to_merge_right(root, be);
    goto free_new;
   }
   p = &(*p)->rb_right;
  } else {
   BUG();
  }
 }

 rb_link_node(&new->be_node, parent, p);
 rb_insert_color(&new->be_node, root);
 return;
free_new:
 nfs4_put_deviceid_node(new->be_device);
 kfree(new);
}
