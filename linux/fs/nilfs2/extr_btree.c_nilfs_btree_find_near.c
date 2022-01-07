
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {scalar_t__ bp_index; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int NILFS_BMAP_INVALID_PTR ;
 int NILFS_BTREE_LEVEL_NODE_MIN ;
 struct nilfs_btree_node* nilfs_btree_get_node (struct nilfs_bmap const*,struct nilfs_btree_path const*,int,int*) ;
 int nilfs_btree_height (struct nilfs_bmap const*) ;
 int nilfs_btree_node_get_ptr (struct nilfs_btree_node*,scalar_t__,int) ;

__attribute__((used)) static __u64 nilfs_btree_find_near(const struct nilfs_bmap *btree,
       const struct nilfs_btree_path *path)
{
 struct nilfs_btree_node *node;
 int level, ncmax;

 if (path == ((void*)0))
  return NILFS_BMAP_INVALID_PTR;


 level = NILFS_BTREE_LEVEL_NODE_MIN;
 if (path[level].bp_index > 0) {
  node = nilfs_btree_get_node(btree, path, level, &ncmax);
  return nilfs_btree_node_get_ptr(node,
      path[level].bp_index - 1,
      ncmax);
 }


 level = NILFS_BTREE_LEVEL_NODE_MIN + 1;
 if (level <= nilfs_btree_height(btree) - 1) {
  node = nilfs_btree_get_node(btree, path, level, &ncmax);
  return nilfs_btree_node_get_ptr(node, path[level].bp_index,
      ncmax);
 }

 return NILFS_BMAP_INVALID_PTR;
}
