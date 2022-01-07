
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int bn_level; } ;



__attribute__((used)) static void
nilfs_btree_node_set_level(struct nilfs_btree_node *node, int level)
{
 node->bn_level = level;
}
