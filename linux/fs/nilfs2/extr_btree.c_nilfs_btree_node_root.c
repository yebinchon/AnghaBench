
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int dummy; } ;


 int NILFS_BTREE_NODE_ROOT ;
 int nilfs_btree_node_get_flags (struct nilfs_btree_node const*) ;

__attribute__((used)) static int nilfs_btree_node_root(const struct nilfs_btree_node *node)
{
 return nilfs_btree_node_get_flags(node) & NILFS_BTREE_NODE_ROOT;
}
