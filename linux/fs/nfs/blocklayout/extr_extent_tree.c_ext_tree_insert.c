
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct pnfs_block_layout {int bl_ext_lock; struct rb_root bl_ext_ro; struct rb_root bl_ext_rw; } ;
struct pnfs_block_extent {int be_state; scalar_t__ be_f_offset; void* be_length; int be_v_offset; int be_device; } ;
typedef void* sector_t ;


 int EINVAL ;
 int GFP_ATOMIC ;




 int __ext_tree_insert (struct rb_root*,struct pnfs_block_extent*,int) ;
 struct pnfs_block_extent* __ext_tree_search (struct rb_root*,scalar_t__) ;
 int dprintk (char*) ;
 scalar_t__ ext_f_end (struct pnfs_block_extent*) ;
 int kfree (struct pnfs_block_extent*) ;
 struct pnfs_block_extent* kmemdup (struct pnfs_block_extent*,int,int ) ;
 int nfs4_get_deviceid (int ) ;
 int nfs4_put_deviceid_node (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
ext_tree_insert(struct pnfs_block_layout *bl, struct pnfs_block_extent *new)
{
 struct pnfs_block_extent *be;
 struct rb_root *root;
 int err = 0;

 switch (new->be_state) {
 case 129:
 case 131:
  root = &bl->bl_ext_rw;
  break;
 case 128:
 case 130:
  root = &bl->bl_ext_ro;
  break;
 default:
  dprintk("invalid extent type\n");
  return -EINVAL;
 }

 spin_lock(&bl->bl_ext_lock);
retry:
 be = __ext_tree_search(root, new->be_f_offset);
 if (!be || be->be_f_offset >= ext_f_end(new)) {
  __ext_tree_insert(root, new, 1);
 } else if (new->be_f_offset >= be->be_f_offset) {
  if (ext_f_end(new) <= ext_f_end(be)) {
   nfs4_put_deviceid_node(new->be_device);
   kfree(new);
  } else {
   sector_t new_len = ext_f_end(new) - ext_f_end(be);
   sector_t diff = new->be_length - new_len;

   new->be_f_offset += diff;
   new->be_v_offset += diff;
   new->be_length = new_len;
   goto retry;
  }
 } else if (ext_f_end(new) <= ext_f_end(be)) {
  new->be_length = be->be_f_offset - new->be_f_offset;
  __ext_tree_insert(root, new, 1);
 } else {
  struct pnfs_block_extent *split;
  sector_t new_len = ext_f_end(new) - ext_f_end(be);
  sector_t diff = new->be_length - new_len;

  split = kmemdup(new, sizeof(*new), GFP_ATOMIC);
  if (!split) {
   err = -EINVAL;
   goto out;
  }

  split->be_length = be->be_f_offset - split->be_f_offset;
  split->be_device = nfs4_get_deviceid(new->be_device);
  __ext_tree_insert(root, split, 1);

  new->be_f_offset += diff;
  new->be_v_offset += diff;
  new->be_length = new_len;
  goto retry;
 }
out:
 spin_unlock(&bl->bl_ext_lock);
 return err;
}
