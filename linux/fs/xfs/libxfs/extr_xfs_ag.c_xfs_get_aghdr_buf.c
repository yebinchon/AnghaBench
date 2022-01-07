
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* xfs_daddr_t ;
struct xfs_mount {int m_ddev_targp; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf {struct xfs_buf_ops const* b_ops; TYPE_1__* b_maps; void* b_bn; int b_length; } ;
struct TYPE_2__ {void* bm_bn; } ;


 int BBTOB (int ) ;
 struct xfs_buf* xfs_buf_get_uncached (int ,size_t,int ) ;
 int xfs_buf_zero (struct xfs_buf*,int ,int ) ;

__attribute__((used)) static struct xfs_buf *
xfs_get_aghdr_buf(
 struct xfs_mount *mp,
 xfs_daddr_t blkno,
 size_t numblks,
 const struct xfs_buf_ops *ops)
{
 struct xfs_buf *bp;

 bp = xfs_buf_get_uncached(mp->m_ddev_targp, numblks, 0);
 if (!bp)
  return ((void*)0);

 xfs_buf_zero(bp, 0, BBTOB(bp->b_length));
 bp->b_bn = blkno;
 bp->b_maps[0].bm_bn = blkno;
 bp->b_ops = ops;

 return bp;
}
