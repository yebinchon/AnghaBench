
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_bmdr_rec_t ;
typedef int xfs_bmdr_ptr_t ;
typedef int xfs_bmdr_key_t ;
typedef int xfs_bmdr_block_t ;



int
xfs_bmdr_maxrecs(
 int blocklen,
 int leaf)
{
 blocklen -= sizeof(xfs_bmdr_block_t);

 if (leaf)
  return blocklen / sizeof(xfs_bmdr_rec_t);
 return blocklen / (sizeof(xfs_bmdr_key_t) + sizeof(xfs_bmdr_ptr_t));
}
