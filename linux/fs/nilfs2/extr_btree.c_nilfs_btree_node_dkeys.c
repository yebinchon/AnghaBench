
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int dummy; } ;
typedef int __le64 ;


 int NILFS_BTREE_NODE_EXTRA_PAD_SIZE ;
 scalar_t__ nilfs_btree_node_root (struct nilfs_btree_node const*) ;

__attribute__((used)) static __le64 *
nilfs_btree_node_dkeys(const struct nilfs_btree_node *node)
{
 return (__le64 *)((char *)(node + 1) +
     (nilfs_btree_node_root(node) ?
      0 : NILFS_BTREE_NODE_EXTRA_PAD_SIZE));
}
