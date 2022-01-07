
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dsb {scalar_t__ sb_magicnum; } ;
struct xfs_buf {int dummy; } ;


 int EWRONGFS ;
 struct xfs_dsb* XFS_BUF_TO_SBP (struct xfs_buf*) ;
 int XFS_SB_MAGIC ;
 scalar_t__ cpu_to_be32 (int ) ;
 int xfs_buf_ioerror (struct xfs_buf*,int ) ;
 int xfs_sb_read_verify (struct xfs_buf*) ;

__attribute__((used)) static void
xfs_sb_quiet_read_verify(
 struct xfs_buf *bp)
{
 struct xfs_dsb *dsb = XFS_BUF_TO_SBP(bp);

 if (dsb->sb_magicnum == cpu_to_be32(XFS_SB_MAGIC)) {

  xfs_sb_read_verify(bp);
  return;
 }

 xfs_buf_ioerror(bp, -EWRONGFS);
}
