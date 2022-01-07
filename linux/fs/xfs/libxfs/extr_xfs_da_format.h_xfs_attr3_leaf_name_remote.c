
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_attr_leafblock_t ;
typedef int xfs_attr_leaf_name_remote_t ;


 scalar_t__ xfs_attr3_leaf_name (int *,int) ;

__attribute__((used)) static inline xfs_attr_leaf_name_remote_t *
xfs_attr3_leaf_name_remote(xfs_attr_leafblock_t *leafp, int idx)
{
 return (xfs_attr_leaf_name_remote_t *)xfs_attr3_leaf_name(leafp, idx);
}
