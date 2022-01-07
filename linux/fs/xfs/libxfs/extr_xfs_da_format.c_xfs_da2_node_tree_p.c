
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_da_node_entry {int dummy; } ;
struct xfs_da_intnode {struct xfs_da_node_entry* __btree; } ;



__attribute__((used)) static struct xfs_da_node_entry *
xfs_da2_node_tree_p(struct xfs_da_intnode *dap)
{
 return dap->__btree;
}
