
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int dummy; } ;
typedef int __u64 ;
typedef int __le64 ;


 int le64_to_cpu (int ) ;
 int memmove (int *,int *,int) ;
 int * nilfs_btree_node_dkeys (struct nilfs_btree_node*) ;
 int * nilfs_btree_node_dptrs (struct nilfs_btree_node*,int) ;
 int nilfs_btree_node_get_nchildren (struct nilfs_btree_node*) ;
 int nilfs_btree_node_set_nchildren (struct nilfs_btree_node*,int) ;

__attribute__((used)) static void nilfs_btree_node_delete(struct nilfs_btree_node *node, int index,
        __u64 *keyp, __u64 *ptrp, int ncmax)
{
 __u64 key;
 __u64 ptr;
 __le64 *dkeys;
 __le64 *dptrs;
 int nchildren;

 dkeys = nilfs_btree_node_dkeys(node);
 dptrs = nilfs_btree_node_dptrs(node, ncmax);
 key = le64_to_cpu(dkeys[index]);
 ptr = le64_to_cpu(dptrs[index]);
 nchildren = nilfs_btree_node_get_nchildren(node);
 if (keyp != ((void*)0))
  *keyp = key;
 if (ptrp != ((void*)0))
  *ptrp = ptr;

 if (index < nchildren - 1) {
  memmove(dkeys + index, dkeys + index + 1,
   (nchildren - index - 1) * sizeof(*dkeys));
  memmove(dptrs + index, dptrs + index + 1,
   (nchildren - index - 1) * sizeof(*dptrs));
 }
 nchildren--;
 nilfs_btree_node_set_nchildren(node, nchildren);
}
