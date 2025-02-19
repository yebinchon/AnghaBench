
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int bp_index; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int ENOENT ;
 struct nilfs_btree_node* nilfs_btree_get_nonroot_node (struct nilfs_btree_path const*,int) ;
 struct nilfs_btree_node* nilfs_btree_get_root (struct nilfs_bmap const*) ;
 int nilfs_btree_height (struct nilfs_bmap const*) ;
 int nilfs_btree_node_get_key (struct nilfs_btree_node*,int) ;
 int nilfs_btree_node_get_nchildren (struct nilfs_btree_node*) ;

__attribute__((used)) static int nilfs_btree_get_next_key(const struct nilfs_bmap *btree,
        const struct nilfs_btree_path *path,
        int minlevel, __u64 *nextkey)
{
 struct nilfs_btree_node *node;
 int maxlevel = nilfs_btree_height(btree) - 1;
 int index, next_adj, level;


 next_adj = 0;
 for (level = minlevel; level <= maxlevel; level++) {
  if (level == maxlevel)
   node = nilfs_btree_get_root(btree);
  else
   node = nilfs_btree_get_nonroot_node(path, level);

  index = path[level].bp_index + next_adj;
  if (index < nilfs_btree_node_get_nchildren(node)) {

   *nextkey = nilfs_btree_node_get_key(node, index);
   return 0;
  }

  next_adj = 1;
 }
 return -ENOENT;
}
