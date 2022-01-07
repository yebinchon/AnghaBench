
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_mount {int dummy; } ;
struct TYPE_2__ {scalar_t__ di_format; scalar_t__ di_nextents; } ;
struct xfs_inode {int i_imap; TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct xfs_dinode {int dummy; } ;
struct xfs_buf {int dummy; } ;


 int ASSERT (int) ;
 int EAGAIN ;
 int EIO ;
 int SHUTDOWN_CORRUPT_INCORE ;
 int XBF_TRYLOCK ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DINODE_FMT_BTREE ;
 scalar_t__ XFS_FORCED_SHUTDOWN (struct xfs_mount*) ;
 scalar_t__ XFS_IFORK_MAXEXT (struct xfs_inode*,int ) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_SHARED ;
 int XFS_ISTALE ;
 int XFS_STATS_INC (struct xfs_mount*,int ) ;
 scalar_t__ xfs_buf_ispinned (struct xfs_buf*) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_force_shutdown (struct xfs_mount*,int ) ;
 scalar_t__ xfs_iflags_test (struct xfs_inode*,int ) ;
 int xfs_iflush_abort (struct xfs_inode*,int) ;
 int xfs_iflush_cluster (struct xfs_inode*,struct xfs_buf*) ;
 int xfs_iflush_int (struct xfs_inode*,struct xfs_buf*) ;
 int xfs_ifunlock (struct xfs_inode*) ;
 int xfs_imap_to_bp (struct xfs_mount*,int *,int *,struct xfs_dinode**,struct xfs_buf**,int ,int ) ;
 int xfs_isiflocked (struct xfs_inode*) ;
 int xfs_isilocked (struct xfs_inode*,int) ;
 int xfs_iunpin_wait (struct xfs_inode*) ;
 int xfs_log_force (struct xfs_mount*,int ) ;
 int xs_iflush_count ;

int
xfs_iflush(
 struct xfs_inode *ip,
 struct xfs_buf **bpp)
{
 struct xfs_mount *mp = ip->i_mount;
 struct xfs_buf *bp = ((void*)0);
 struct xfs_dinode *dip;
 int error;

 XFS_STATS_INC(mp, xs_iflush_count);

 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL|XFS_ILOCK_SHARED));
 ASSERT(xfs_isiflocked(ip));
 ASSERT(ip->i_d.di_format != XFS_DINODE_FMT_BTREE ||
        ip->i_d.di_nextents > XFS_IFORK_MAXEXT(ip, XFS_DATA_FORK));

 *bpp = ((void*)0);

 xfs_iunpin_wait(ip);
 if (xfs_iflags_test(ip, XFS_ISTALE)) {
  xfs_ifunlock(ip);
  return 0;
 }
 if (XFS_FORCED_SHUTDOWN(mp)) {
  error = -EIO;
  goto abort_out;
 }
 error = xfs_imap_to_bp(mp, ((void*)0), &ip->i_imap, &dip, &bp, XBF_TRYLOCK,
          0);
 if (error == -EAGAIN) {
  xfs_ifunlock(ip);
  return error;
 }
 if (error)
  goto corrupt_out;




 error = xfs_iflush_int(ip, bp);
 if (error)
  goto corrupt_out;





 if (xfs_buf_ispinned(bp))
  xfs_log_force(mp, 0);
 error = xfs_iflush_cluster(ip, bp);
 if (error)
  return error;

 *bpp = bp;
 return 0;

corrupt_out:
 if (bp)
  xfs_buf_relse(bp);
 xfs_force_shutdown(mp, SHUTDOWN_CORRUPT_INCORE);
abort_out:

 xfs_iflush_abort(ip, 0);
 return error;
}
