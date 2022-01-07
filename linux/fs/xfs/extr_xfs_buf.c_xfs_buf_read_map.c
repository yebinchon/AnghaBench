
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {int b_flags; struct xfs_buf_ops const* b_ops; } ;
typedef struct xfs_buf xfs_buf_t ;
typedef int xfs_buf_flags_t ;
struct xfs_buftarg {int bt_mount; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf_map {int dummy; } ;


 int ASSERT (int) ;
 int XBF_ASYNC ;
 int XBF_DONE ;
 int XBF_READ ;
 int XFS_STATS_INC (int ,int ) ;
 int _RET_IP_ ;
 int _xfs_buf_read (struct xfs_buf*,int) ;
 int trace_xfs_buf_read (struct xfs_buf*,int,int ) ;
 int xb_get_read ;
 struct xfs_buf* xfs_buf_get_map (struct xfs_buftarg*,struct xfs_buf_map*,int,int) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_buf_reverify (struct xfs_buf*,struct xfs_buf_ops const*) ;

xfs_buf_t *
xfs_buf_read_map(
 struct xfs_buftarg *target,
 struct xfs_buf_map *map,
 int nmaps,
 xfs_buf_flags_t flags,
 const struct xfs_buf_ops *ops)
{
 struct xfs_buf *bp;

 flags |= XBF_READ;

 bp = xfs_buf_get_map(target, map, nmaps, flags);
 if (!bp)
  return ((void*)0);

 trace_xfs_buf_read(bp, flags, _RET_IP_);

 if (!(bp->b_flags & XBF_DONE)) {
  XFS_STATS_INC(target->bt_mount, xb_get_read);
  bp->b_ops = ops;
  _xfs_buf_read(bp, flags);
  return bp;
 }

 xfs_buf_reverify(bp, ops);

 if (flags & XBF_ASYNC) {




  xfs_buf_relse(bp);
  return ((void*)0);
 }


 bp->b_flags &= ~XBF_READ;
 ASSERT(bp->b_ops != ((void*)0) || ops == ((void*)0));
 return bp;
}
