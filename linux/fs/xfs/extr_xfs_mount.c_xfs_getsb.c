
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {struct xfs_buf* m_sb_bp; } ;
struct xfs_buf {int b_flags; } ;


 int ASSERT (int) ;
 int XBF_DONE ;
 int xfs_buf_hold (struct xfs_buf*) ;
 int xfs_buf_lock (struct xfs_buf*) ;

struct xfs_buf *
xfs_getsb(
 struct xfs_mount *mp)
{
 struct xfs_buf *bp = mp->m_sb_bp;

 xfs_buf_lock(bp);
 xfs_buf_hold(bp);
 ASSERT(bp->b_flags & XBF_DONE);
 return bp;
}
