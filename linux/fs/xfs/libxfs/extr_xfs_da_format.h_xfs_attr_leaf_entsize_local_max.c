
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int xfs_attr_leaf_entsize_local_max(int bsize)
{
 return (((bsize) >> 1) + ((bsize) >> 2));
}
