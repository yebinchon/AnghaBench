
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int dummy; } ;
typedef int __u64 ;


 int cpu_to_le64 (int ) ;
 int * nilfs_btree_node_dptrs (struct nilfs_btree_node*,int) ;

__attribute__((used)) static void
nilfs_btree_node_set_ptr(struct nilfs_btree_node *node, int index, __u64 ptr,
    int ncmax)
{
 *(nilfs_btree_node_dptrs(node, ncmax) + index) = cpu_to_le64(ptr);
}
