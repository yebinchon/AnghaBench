
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_inofree_t ;


 int XFS_INOBT_MASK (int) ;
 int XFS_INODES_PER_CHUNK ;

__attribute__((used)) static inline xfs_inofree_t xfs_inobt_maskn(int i, int n)
{
 return ((n >= XFS_INODES_PER_CHUNK ? 0 : XFS_INOBT_MASK(n)) - 1) << i;
}
