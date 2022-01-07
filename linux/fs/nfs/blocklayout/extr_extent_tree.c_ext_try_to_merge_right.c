
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct pnfs_block_extent {int be_device; int be_node; scalar_t__ be_length; } ;


 scalar_t__ ext_can_merge (struct pnfs_block_extent*,struct pnfs_block_extent*) ;
 struct pnfs_block_extent* ext_tree_next (struct pnfs_block_extent*) ;
 int kfree (struct pnfs_block_extent*) ;
 int nfs4_put_deviceid_node (int ) ;
 int rb_erase (int *,struct rb_root*) ;

__attribute__((used)) static struct pnfs_block_extent *
ext_try_to_merge_right(struct rb_root *root, struct pnfs_block_extent *be)
{
 struct pnfs_block_extent *right = ext_tree_next(be);

 if (right && ext_can_merge(be, right)) {
  be->be_length += right->be_length;
  rb_erase(&right->be_node, root);
  nfs4_put_deviceid_node(right->be_device);
  kfree(right);
 }

 return be;
}
