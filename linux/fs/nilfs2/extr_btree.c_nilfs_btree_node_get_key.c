
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int dummy; } ;
typedef int __u64 ;


 int le64_to_cpu (int ) ;
 int * nilfs_btree_node_dkeys (struct nilfs_btree_node const*) ;

__attribute__((used)) static __u64
nilfs_btree_node_get_key(const struct nilfs_btree_node *node, int index)
{
 return le64_to_cpu(*(nilfs_btree_node_dkeys(node) + index));
}
