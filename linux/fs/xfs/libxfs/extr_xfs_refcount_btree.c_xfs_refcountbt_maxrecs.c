
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_refcount_ptr_t ;
struct xfs_refcount_rec {int dummy; } ;
struct xfs_refcount_key {int dummy; } ;


 scalar_t__ XFS_REFCOUNT_BLOCK_LEN ;

int
xfs_refcountbt_maxrecs(
 int blocklen,
 bool leaf)
{
 blocklen -= XFS_REFCOUNT_BLOCK_LEN;

 if (leaf)
  return blocklen / sizeof(struct xfs_refcount_rec);
 return blocklen / (sizeof(struct xfs_refcount_key) +
      sizeof(xfs_refcount_ptr_t));
}
