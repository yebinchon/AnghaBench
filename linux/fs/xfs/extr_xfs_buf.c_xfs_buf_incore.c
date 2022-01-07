
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_daddr_t ;
typedef int xfs_buf_flags_t ;
struct xfs_buftarg {int dummy; } ;
struct xfs_buf {int dummy; } ;


 int DEFINE_SINGLE_BUF_MAP (int ,int ,size_t) ;
 int map ;
 int xfs_buf_find (struct xfs_buftarg*,int *,int,int ,int *,struct xfs_buf**) ;

struct xfs_buf *
xfs_buf_incore(
 struct xfs_buftarg *target,
 xfs_daddr_t blkno,
 size_t numblks,
 xfs_buf_flags_t flags)
{
 struct xfs_buf *bp;
 int error;
 DEFINE_SINGLE_BUF_MAP(map, blkno, numblks);

 error = xfs_buf_find(target, &map, 1, flags, ((void*)0), &bp);
 if (error)
  return ((void*)0);
 return bp;
}
