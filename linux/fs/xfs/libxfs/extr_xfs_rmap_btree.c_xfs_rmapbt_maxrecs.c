
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_rmap_ptr_t ;
struct xfs_rmap_rec {int dummy; } ;
struct xfs_rmap_key {int dummy; } ;


 scalar_t__ XFS_RMAP_BLOCK_LEN ;

int
xfs_rmapbt_maxrecs(
 int blocklen,
 int leaf)
{
 blocklen -= XFS_RMAP_BLOCK_LEN;

 if (leaf)
  return blocklen / sizeof(struct xfs_rmap_rec);
 return blocklen /
  (2 * sizeof(struct xfs_rmap_key) + sizeof(xfs_rmap_ptr_t));
}
