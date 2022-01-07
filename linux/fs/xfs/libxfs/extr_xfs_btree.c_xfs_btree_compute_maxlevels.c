
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint ;



uint
xfs_btree_compute_maxlevels(
 uint *limits,
 unsigned long len)
{
 uint level;
 unsigned long maxblocks;

 maxblocks = (len + limits[0] - 1) / limits[0];
 for (level = 1; maxblocks > 1; level++)
  maxblocks = (maxblocks + limits[1] - 1) / limits[1];
 return level;
}
