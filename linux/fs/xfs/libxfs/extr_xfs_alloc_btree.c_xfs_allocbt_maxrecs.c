
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_alloc_rec_t ;
typedef int xfs_alloc_ptr_t ;
typedef int xfs_alloc_key_t ;
struct xfs_mount {int dummy; } ;


 scalar_t__ XFS_ALLOC_BLOCK_LEN (struct xfs_mount*) ;

int
xfs_allocbt_maxrecs(
 struct xfs_mount *mp,
 int blocklen,
 int leaf)
{
 blocklen -= XFS_ALLOC_BLOCK_LEN(mp);

 if (leaf)
  return blocklen / sizeof(xfs_alloc_rec_t);
 return blocklen / (sizeof(xfs_alloc_key_t) + sizeof(xfs_alloc_ptr_t));
}
