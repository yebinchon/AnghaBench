
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_readahead_info {int index; int max_ra_blocks; int ncmax; int node; } ;
struct nilfs_btree_path {int bp_index; int * bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int EINVAL ;
 int ENOENT ;
 int NILFS_BMAP_INVALID_PTR ;
 int NILFS_BTREE_LEVEL_NODE_MIN ;
 int NILFS_BTREE_ROOT_NCHILDREN_MAX ;
 int WARN_ON (int) ;
 int __nilfs_btree_get_block (struct nilfs_bmap const*,int ,int **,struct nilfs_btree_readahead_info*) ;
 scalar_t__ nilfs_btree_bad_node (struct nilfs_bmap const*,struct nilfs_btree_node*,int) ;
 int nilfs_btree_get_node (struct nilfs_bmap const*,struct nilfs_btree_path*,int,int *) ;
 struct nilfs_btree_node* nilfs_btree_get_nonroot_node (struct nilfs_btree_path*,int) ;
 struct nilfs_btree_node* nilfs_btree_get_root (struct nilfs_bmap const*) ;
 int nilfs_btree_nchildren_per_block (struct nilfs_bmap const*) ;
 int nilfs_btree_node_get_level (struct nilfs_btree_node*) ;
 scalar_t__ nilfs_btree_node_get_nchildren (struct nilfs_btree_node*) ;
 int nilfs_btree_node_get_ptr (struct nilfs_btree_node*,int,int) ;
 int nilfs_btree_node_lookup (struct nilfs_btree_node*,int ,int*) ;

__attribute__((used)) static int nilfs_btree_do_lookup(const struct nilfs_bmap *btree,
     struct nilfs_btree_path *path,
     __u64 key, __u64 *ptrp, int minlevel,
     int readahead)
{
 struct nilfs_btree_node *node;
 struct nilfs_btree_readahead_info p, *ra;
 __u64 ptr;
 int level, index, found, ncmax, ret;

 node = nilfs_btree_get_root(btree);
 level = nilfs_btree_node_get_level(node);
 if (level < minlevel || nilfs_btree_node_get_nchildren(node) <= 0)
  return -ENOENT;

 found = nilfs_btree_node_lookup(node, key, &index);
 ptr = nilfs_btree_node_get_ptr(node, index,
           NILFS_BTREE_ROOT_NCHILDREN_MAX);
 path[level].bp_bh = ((void*)0);
 path[level].bp_index = index;

 ncmax = nilfs_btree_nchildren_per_block(btree);

 while (--level >= minlevel) {
  ra = ((void*)0);
  if (level == NILFS_BTREE_LEVEL_NODE_MIN && readahead) {
   p.node = nilfs_btree_get_node(btree, path, level + 1,
            &p.ncmax);
   p.index = index;
   p.max_ra_blocks = 7;
   ra = &p;
  }
  ret = __nilfs_btree_get_block(btree, ptr, &path[level].bp_bh,
           ra);
  if (ret < 0)
   return ret;

  node = nilfs_btree_get_nonroot_node(path, level);
  if (nilfs_btree_bad_node(btree, node, level))
   return -EINVAL;
  if (!found)
   found = nilfs_btree_node_lookup(node, key, &index);
  else
   index = 0;
  if (index < ncmax) {
   ptr = nilfs_btree_node_get_ptr(node, index, ncmax);
  } else {
   WARN_ON(found || level != NILFS_BTREE_LEVEL_NODE_MIN);

   ptr = NILFS_BMAP_INVALID_PTR;
  }
  path[level].bp_index = index;
 }
 if (!found)
  return -ENOENT;

 if (ptrp != ((void*)0))
  *ptrp = ptr;

 return 0;
}
