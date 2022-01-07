
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int dummy; } ;
typedef int __u64 ;
typedef int __le64 ;


 int cpu_to_le64 (int ) ;
 int memmove (int *,int *,int) ;
 int * nilfs_btree_node_dkeys (struct nilfs_btree_node*) ;
 int * nilfs_btree_node_dptrs (struct nilfs_btree_node*,int) ;
 int nilfs_btree_node_get_nchildren (struct nilfs_btree_node*) ;
 int nilfs_btree_node_set_nchildren (struct nilfs_btree_node*,int) ;

__attribute__((used)) static void nilfs_btree_node_insert(struct nilfs_btree_node *node, int index,
        __u64 key, __u64 ptr, int ncmax)
{
 __le64 *dkeys;
 __le64 *dptrs;
 int nchildren;

 dkeys = nilfs_btree_node_dkeys(node);
 dptrs = nilfs_btree_node_dptrs(node, ncmax);
 nchildren = nilfs_btree_node_get_nchildren(node);
 if (index < nchildren) {
  memmove(dkeys + index + 1, dkeys + index,
   (nchildren - index) * sizeof(*dkeys));
  memmove(dptrs + index + 1, dptrs + index,
   (nchildren - index) * sizeof(*dptrs));
 }
 dkeys[index] = cpu_to_le64(key);
 dptrs[index] = cpu_to_le64(ptr);
 nchildren++;
 nilfs_btree_node_set_nchildren(node, nchildren);
}
