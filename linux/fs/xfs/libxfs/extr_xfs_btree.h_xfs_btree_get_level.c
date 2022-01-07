
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_btree_block {int bb_level; } ;


 int be16_to_cpu (int ) ;

__attribute__((used)) static inline int xfs_btree_get_level(struct xfs_btree_block *block)
{
 return be16_to_cpu(block->bb_level);
}
