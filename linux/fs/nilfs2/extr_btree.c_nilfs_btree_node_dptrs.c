
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int dummy; } ;
typedef int __le64 ;


 scalar_t__ nilfs_btree_node_dkeys (struct nilfs_btree_node const*) ;

__attribute__((used)) static __le64 *
nilfs_btree_node_dptrs(const struct nilfs_btree_node *node, int ncmax)
{
 return (__le64 *)(nilfs_btree_node_dkeys(node) + ncmax);
}
