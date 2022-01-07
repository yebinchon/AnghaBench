
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int dummy; } ;


 int nilfs_btree_get_root (struct nilfs_bmap const*) ;
 int nilfs_btree_node_get_level (int ) ;

__attribute__((used)) static int nilfs_btree_height(const struct nilfs_bmap *btree)
{
 return nilfs_btree_node_get_level(nilfs_btree_get_root(btree)) + 1;
}
