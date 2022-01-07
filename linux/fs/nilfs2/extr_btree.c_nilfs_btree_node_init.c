
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int dummy; } ;
typedef int __u64 ;
typedef int __le64 ;


 int cpu_to_le64 (int const) ;
 int * nilfs_btree_node_dkeys (struct nilfs_btree_node*) ;
 int * nilfs_btree_node_dptrs (struct nilfs_btree_node*,int) ;
 int nilfs_btree_node_set_flags (struct nilfs_btree_node*,int) ;
 int nilfs_btree_node_set_level (struct nilfs_btree_node*,int) ;
 int nilfs_btree_node_set_nchildren (struct nilfs_btree_node*,int) ;

__attribute__((used)) static void nilfs_btree_node_init(struct nilfs_btree_node *node, int flags,
      int level, int nchildren, int ncmax,
      const __u64 *keys, const __u64 *ptrs)
{
 __le64 *dkeys;
 __le64 *dptrs;
 int i;

 nilfs_btree_node_set_flags(node, flags);
 nilfs_btree_node_set_level(node, level);
 nilfs_btree_node_set_nchildren(node, nchildren);

 dkeys = nilfs_btree_node_dkeys(node);
 dptrs = nilfs_btree_node_dptrs(node, ncmax);
 for (i = 0; i < nchildren; i++) {
  dkeys[i] = cpu_to_le64(keys[i]);
  dptrs[i] = cpu_to_le64(ptrs[i]);
 }
}
