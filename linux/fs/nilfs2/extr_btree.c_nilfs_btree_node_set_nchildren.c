
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int bn_nchildren; } ;


 int cpu_to_le16 (int) ;

__attribute__((used)) static void
nilfs_btree_node_set_nchildren(struct nilfs_btree_node *node, int nchildren)
{
 node->bn_nchildren = cpu_to_le16(nchildren);
}
