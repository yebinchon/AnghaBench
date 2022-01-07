
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_attr_leafblock_t ;
struct xfs_attr_leaf_entry {int nameidx; } ;


 size_t be16_to_cpu (int ) ;
 struct xfs_attr_leaf_entry* xfs_attr3_leaf_entryp (int *) ;

__attribute__((used)) static inline char *
xfs_attr3_leaf_name(xfs_attr_leafblock_t *leafp, int idx)
{
 struct xfs_attr_leaf_entry *entries = xfs_attr3_leaf_entryp(leafp);

 return &((char *)leafp)[be16_to_cpu(entries[idx].nameidx)];
}
