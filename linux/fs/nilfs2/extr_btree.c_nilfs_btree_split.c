
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bpr_ptr; } ;
struct nilfs_btree_path {int bp_index; int * bp_sib_bh; TYPE_1__ bp_newreq; int * bp_bh; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int brelse (int *) ;
 int buffer_dirty (int *) ;
 int mark_buffer_dirty (int *) ;
 int nilfs_btree_do_insert (struct nilfs_bmap*,struct nilfs_btree_path*,int,int *,int *) ;
 struct nilfs_btree_node* nilfs_btree_get_nonroot_node (struct nilfs_btree_path*,int) ;
 struct nilfs_btree_node* nilfs_btree_get_sib_node (struct nilfs_btree_path*,int) ;
 int nilfs_btree_nchildren_per_block (struct nilfs_bmap*) ;
 int nilfs_btree_node_get_key (struct nilfs_btree_node*,int ) ;
 int nilfs_btree_node_get_nchildren (struct nilfs_btree_node*) ;
 int nilfs_btree_node_insert (struct nilfs_btree_node*,int,int ,int ,int) ;
 int nilfs_btree_node_move_right (struct nilfs_btree_node*,struct nilfs_btree_node*,int,int,int) ;

__attribute__((used)) static void nilfs_btree_split(struct nilfs_bmap *btree,
         struct nilfs_btree_path *path,
         int level, __u64 *keyp, __u64 *ptrp)
{
 struct nilfs_btree_node *node, *right;
 int nchildren, n, move, ncblk;

 node = nilfs_btree_get_nonroot_node(path, level);
 right = nilfs_btree_get_sib_node(path, level);
 nchildren = nilfs_btree_node_get_nchildren(node);
 ncblk = nilfs_btree_nchildren_per_block(btree);
 move = 0;

 n = (nchildren + 1) / 2;
 if (n > nchildren - path[level].bp_index) {
  n--;
  move = 1;
 }

 nilfs_btree_node_move_right(node, right, n, ncblk, ncblk);

 if (!buffer_dirty(path[level].bp_bh))
  mark_buffer_dirty(path[level].bp_bh);
 if (!buffer_dirty(path[level].bp_sib_bh))
  mark_buffer_dirty(path[level].bp_sib_bh);

 if (move) {
  path[level].bp_index -= nilfs_btree_node_get_nchildren(node);
  nilfs_btree_node_insert(right, path[level].bp_index,
     *keyp, *ptrp, ncblk);

  *keyp = nilfs_btree_node_get_key(right, 0);
  *ptrp = path[level].bp_newreq.bpr_ptr;

  brelse(path[level].bp_bh);
  path[level].bp_bh = path[level].bp_sib_bh;
  path[level].bp_sib_bh = ((void*)0);
 } else {
  nilfs_btree_do_insert(btree, path, level, keyp, ptrp);

  *keyp = nilfs_btree_node_get_key(right, 0);
  *ptrp = path[level].bp_newreq.bpr_ptr;

  brelse(path[level].bp_sib_bh);
  path[level].bp_sib_bh = ((void*)0);
 }

 path[level + 1].bp_index++;
}
