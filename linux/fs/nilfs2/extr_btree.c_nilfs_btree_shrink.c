
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int * bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int NILFS_BTREE_ROOT_NCHILDREN_MAX ;
 int nilfs_btnode_delete (int *) ;
 int nilfs_btree_do_delete (struct nilfs_bmap*,struct nilfs_btree_path*,int,int *,int *) ;
 struct nilfs_btree_node* nilfs_btree_get_nonroot_node (struct nilfs_btree_path*,int) ;
 struct nilfs_btree_node* nilfs_btree_get_root (struct nilfs_bmap*) ;
 int nilfs_btree_nchildren_per_block (struct nilfs_bmap*) ;
 int nilfs_btree_node_delete (struct nilfs_btree_node*,int ,int *,int *,int ) ;
 int nilfs_btree_node_get_nchildren (struct nilfs_btree_node*) ;
 int nilfs_btree_node_move_left (struct nilfs_btree_node*,struct nilfs_btree_node*,int,int ,int) ;
 int nilfs_btree_node_set_level (struct nilfs_btree_node*,int) ;

__attribute__((used)) static void nilfs_btree_shrink(struct nilfs_bmap *btree,
          struct nilfs_btree_path *path,
          int level, __u64 *keyp, __u64 *ptrp)
{
 struct nilfs_btree_node *root, *child;
 int n, ncblk;

 nilfs_btree_do_delete(btree, path, level, keyp, ptrp);

 root = nilfs_btree_get_root(btree);
 child = nilfs_btree_get_nonroot_node(path, level);
 ncblk = nilfs_btree_nchildren_per_block(btree);

 nilfs_btree_node_delete(root, 0, ((void*)0), ((void*)0),
    NILFS_BTREE_ROOT_NCHILDREN_MAX);
 nilfs_btree_node_set_level(root, level);
 n = nilfs_btree_node_get_nchildren(child);
 nilfs_btree_node_move_left(root, child, n,
       NILFS_BTREE_ROOT_NCHILDREN_MAX, ncblk);

 nilfs_btnode_delete(path[level].bp_bh);
 path[level].bp_bh = ((void*)0);
}
