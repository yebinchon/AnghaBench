
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int bn_flags; } ;



__attribute__((used)) static void
nilfs_btree_node_set_flags(struct nilfs_btree_node *node, int flags)
{
 node->bn_flags = flags;
}
