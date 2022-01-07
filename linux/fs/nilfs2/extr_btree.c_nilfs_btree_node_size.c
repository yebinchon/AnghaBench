
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int b_inode; } ;


 int i_blocksize (int ) ;

__attribute__((used)) static int nilfs_btree_node_size(const struct nilfs_bmap *btree)
{
 return i_blocksize(btree->b_inode);
}
