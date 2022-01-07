
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int dummy; } ;
typedef int __u64 ;


 int cpu_to_le64 (int ) ;
 int * nilfs_btree_node_dkeys (struct nilfs_btree_node*) ;

__attribute__((used)) static void
nilfs_btree_node_set_key(struct nilfs_btree_node *node, int index, __u64 key)
{
 *(nilfs_btree_node_dkeys(node) + index) = cpu_to_le64(key);
}
