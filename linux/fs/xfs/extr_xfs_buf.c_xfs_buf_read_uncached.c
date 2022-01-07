
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_daddr_t ;
struct xfs_buftarg {int dummy; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf {int b_map_count; int b_error; struct xfs_buf_ops const* b_ops; int b_flags; TYPE_1__* b_maps; int b_bn; } ;
struct TYPE_2__ {int bm_bn; } ;


 int ASSERT (int) ;
 int ENOMEM ;
 int XBF_READ ;
 int XFS_BUF_DADDR_NULL ;
 struct xfs_buf* xfs_buf_get_uncached (struct xfs_buftarg*,size_t,int) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_buf_submit (struct xfs_buf*) ;

int
xfs_buf_read_uncached(
 struct xfs_buftarg *target,
 xfs_daddr_t daddr,
 size_t numblks,
 int flags,
 struct xfs_buf **bpp,
 const struct xfs_buf_ops *ops)
{
 struct xfs_buf *bp;

 *bpp = ((void*)0);

 bp = xfs_buf_get_uncached(target, numblks, flags);
 if (!bp)
  return -ENOMEM;


 ASSERT(bp->b_map_count == 1);
 bp->b_bn = XFS_BUF_DADDR_NULL;
 bp->b_maps[0].bm_bn = daddr;
 bp->b_flags |= XBF_READ;
 bp->b_ops = ops;

 xfs_buf_submit(bp);
 if (bp->b_error) {
  int error = bp->b_error;
  xfs_buf_relse(bp);
  return error;
 }

 *bpp = bp;
 return 0;
}
