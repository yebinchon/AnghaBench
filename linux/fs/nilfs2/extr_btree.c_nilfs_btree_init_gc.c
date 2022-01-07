
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int b_nchildren_per_block; int * b_ops; } ;


 int NILFS_BTREE_NODE_NCHILDREN_MAX (int ) ;
 int nilfs_btree_node_size (struct nilfs_bmap*) ;
 int nilfs_btree_ops_gc ;

void nilfs_btree_init_gc(struct nilfs_bmap *bmap)
{
 bmap->b_ops = &nilfs_btree_ops_gc;
 bmap->b_nchildren_per_block =
  NILFS_BTREE_NODE_NCHILDREN_MAX(nilfs_btree_node_size(bmap));
}
