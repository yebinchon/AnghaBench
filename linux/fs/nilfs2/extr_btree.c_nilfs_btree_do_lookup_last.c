
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int bp_index; int * bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int EINVAL ;
 int ENOENT ;
 int NILFS_BTREE_ROOT_NCHILDREN_MAX ;
 scalar_t__ nilfs_btree_bad_node (struct nilfs_bmap const*,struct nilfs_btree_node*,int) ;
 int nilfs_btree_get_block (struct nilfs_bmap const*,int ,int **) ;
 struct nilfs_btree_node* nilfs_btree_get_nonroot_node (struct nilfs_btree_path*,int) ;
 struct nilfs_btree_node* nilfs_btree_get_root (struct nilfs_bmap const*) ;
 int nilfs_btree_nchildren_per_block (struct nilfs_bmap const*) ;
 int nilfs_btree_node_get_key (struct nilfs_btree_node*,int) ;
 int nilfs_btree_node_get_level (struct nilfs_btree_node*) ;
 int nilfs_btree_node_get_nchildren (struct nilfs_btree_node*) ;
 int nilfs_btree_node_get_ptr (struct nilfs_btree_node*,int,int) ;

__attribute__((used)) static int nilfs_btree_do_lookup_last(const struct nilfs_bmap *btree,
          struct nilfs_btree_path *path,
          __u64 *keyp, __u64 *ptrp)
{
 struct nilfs_btree_node *node;
 __u64 ptr;
 int index, level, ncmax, ret;

 node = nilfs_btree_get_root(btree);
 index = nilfs_btree_node_get_nchildren(node) - 1;
 if (index < 0)
  return -ENOENT;
 level = nilfs_btree_node_get_level(node);
 ptr = nilfs_btree_node_get_ptr(node, index,
           NILFS_BTREE_ROOT_NCHILDREN_MAX);
 path[level].bp_bh = ((void*)0);
 path[level].bp_index = index;
 ncmax = nilfs_btree_nchildren_per_block(btree);

 for (level--; level > 0; level--) {
  ret = nilfs_btree_get_block(btree, ptr, &path[level].bp_bh);
  if (ret < 0)
   return ret;
  node = nilfs_btree_get_nonroot_node(path, level);
  if (nilfs_btree_bad_node(btree, node, level))
   return -EINVAL;
  index = nilfs_btree_node_get_nchildren(node) - 1;
  ptr = nilfs_btree_node_get_ptr(node, index, ncmax);
  path[level].bp_index = index;
 }

 if (keyp != ((void*)0))
  *keyp = nilfs_btree_node_get_key(node, index);
 if (ptrp != ((void*)0))
  *ptrp = ptr;

 return 0;
}
