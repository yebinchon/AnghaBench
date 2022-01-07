
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bpr_ptr; } ;
struct nilfs_btree_path {TYPE_1__ bp_newreq; int * bp_sib_bh; int * bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int NILFS_BTREE_ROOT_NCHILDREN_MAX ;
 int buffer_dirty (int *) ;
 int mark_buffer_dirty (int *) ;
 int nilfs_btree_do_insert (struct nilfs_bmap*,struct nilfs_btree_path*,int,int *,int *) ;
 struct nilfs_btree_node* nilfs_btree_get_root (struct nilfs_bmap*) ;
 struct nilfs_btree_node* nilfs_btree_get_sib_node (struct nilfs_btree_path*,int) ;
 int nilfs_btree_nchildren_per_block (struct nilfs_bmap*) ;
 int nilfs_btree_node_get_key (struct nilfs_btree_node*,int ) ;
 int nilfs_btree_node_get_nchildren (struct nilfs_btree_node*) ;
 int nilfs_btree_node_move_right (struct nilfs_btree_node*,struct nilfs_btree_node*,int,int ,int) ;
 int nilfs_btree_node_set_level (struct nilfs_btree_node*,int) ;

__attribute__((used)) static void nilfs_btree_grow(struct nilfs_bmap *btree,
        struct nilfs_btree_path *path,
        int level, __u64 *keyp, __u64 *ptrp)
{
 struct nilfs_btree_node *root, *child;
 int n, ncblk;

 root = nilfs_btree_get_root(btree);
 child = nilfs_btree_get_sib_node(path, level);
 ncblk = nilfs_btree_nchildren_per_block(btree);

 n = nilfs_btree_node_get_nchildren(root);

 nilfs_btree_node_move_right(root, child, n,
        NILFS_BTREE_ROOT_NCHILDREN_MAX, ncblk);
 nilfs_btree_node_set_level(root, level + 1);

 if (!buffer_dirty(path[level].bp_sib_bh))
  mark_buffer_dirty(path[level].bp_sib_bh);

 path[level].bp_bh = path[level].bp_sib_bh;
 path[level].bp_sib_bh = ((void*)0);

 nilfs_btree_do_insert(btree, path, level, keyp, ptrp);

 *keyp = nilfs_btree_node_get_key(child, 0);
 *ptrp = path[level].bp_newreq.bpr_ptr;
}
