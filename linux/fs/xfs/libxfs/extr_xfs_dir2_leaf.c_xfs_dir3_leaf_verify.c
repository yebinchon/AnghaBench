
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_failaddr_t ;
struct xfs_mount {int dummy; } ;
struct xfs_dir2_leaf {int dummy; } ;
struct xfs_buf {struct xfs_dir2_leaf* b_addr; struct xfs_mount* b_mount; } ;


 scalar_t__ xfs_da3_blkinfo_verify (struct xfs_buf*,struct xfs_dir2_leaf*) ;
 scalar_t__ xfs_dir3_leaf_check_int (struct xfs_mount*,int *,int *,struct xfs_dir2_leaf*) ;

__attribute__((used)) static xfs_failaddr_t
xfs_dir3_leaf_verify(
 struct xfs_buf *bp)
{
 struct xfs_mount *mp = bp->b_mount;
 struct xfs_dir2_leaf *leaf = bp->b_addr;
 xfs_failaddr_t fa;

 fa = xfs_da3_blkinfo_verify(bp, bp->b_addr);
 if (fa)
  return fa;

 return xfs_dir3_leaf_check_int(mp, ((void*)0), ((void*)0), leaf);
}
