
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int bp_index; int bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int NILFS_BTREE_ROOT_NCHILDREN_MAX ;
 int buffer_dirty (int ) ;
 int mark_buffer_dirty (int ) ;
 struct nilfs_btree_node* nilfs_btree_get_nonroot_node (struct nilfs_btree_path*,int) ;
 struct nilfs_btree_node* nilfs_btree_get_root (struct nilfs_bmap*) ;
 int nilfs_btree_height (struct nilfs_bmap*) ;
 int nilfs_btree_nchildren_per_block (struct nilfs_bmap*) ;
 int nilfs_btree_node_delete (struct nilfs_btree_node*,int ,int *,int *,int) ;
 int nilfs_btree_node_get_key (struct nilfs_btree_node*,int ) ;
 int nilfs_btree_promote_key (struct nilfs_bmap*,struct nilfs_btree_path*,int,int ) ;

__attribute__((used)) static void nilfs_btree_do_delete(struct nilfs_bmap *btree,
      struct nilfs_btree_path *path,
      int level, __u64 *keyp, __u64 *ptrp)
{
 struct nilfs_btree_node *node;
 int ncblk;

 if (level < nilfs_btree_height(btree) - 1) {
  node = nilfs_btree_get_nonroot_node(path, level);
  ncblk = nilfs_btree_nchildren_per_block(btree);
  nilfs_btree_node_delete(node, path[level].bp_index,
     keyp, ptrp, ncblk);
  if (!buffer_dirty(path[level].bp_bh))
   mark_buffer_dirty(path[level].bp_bh);
  if (path[level].bp_index == 0)
   nilfs_btree_promote_key(btree, path, level + 1,
    nilfs_btree_node_get_key(node, 0));
 } else {
  node = nilfs_btree_get_root(btree);
  nilfs_btree_node_delete(node, path[level].bp_index,
     keyp, ptrp,
     NILFS_BTREE_ROOT_NCHILDREN_MAX);
 }
}
