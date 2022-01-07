
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int b_nchildren_per_block; } ;



__attribute__((used)) static int nilfs_btree_nchildren_per_block(const struct nilfs_bmap *btree)
{
 return btree->b_nchildren_per_block;
}
