
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {int dummy; } ;
struct xfs_mount {int m_sb; } ;
struct xfs_dsb {scalar_t__ sb_magicnum; scalar_t__ sb_crc; int sb_versionnum; } ;
struct xfs_buf {scalar_t__ b_bn; struct xfs_mount* b_mount; } ;


 int EFSBADCRC ;
 int EFSCORRUPTED ;
 struct xfs_dsb* XFS_BUF_TO_SBP (struct xfs_buf*) ;
 int XFS_SB_CRC_OFF ;
 scalar_t__ XFS_SB_DADDR ;
 int XFS_SB_MAGIC ;
 int XFS_SB_VERSION_5 ;
 int XFS_SB_VERSION_NUMBITS ;
 int __this_address ;
 int __xfs_sb_from_disk (struct xfs_sb*,struct xfs_dsb*,int) ;
 int be16_to_cpu (int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int xfs_buf_ioerror (struct xfs_buf*,int) ;
 int xfs_buf_verify_cksum (struct xfs_buf*,int ) ;
 scalar_t__ xfs_sb_version_hascrc (int *) ;
 int xfs_validate_sb_common (struct xfs_mount*,struct xfs_buf*,struct xfs_sb*) ;
 int xfs_validate_sb_read (struct xfs_mount*,struct xfs_sb*) ;
 int xfs_verifier_error (struct xfs_buf*,int,int ) ;

__attribute__((used)) static void
xfs_sb_read_verify(
 struct xfs_buf *bp)
{
 struct xfs_sb sb;
 struct xfs_mount *mp = bp->b_mount;
 struct xfs_dsb *dsb = XFS_BUF_TO_SBP(bp);
 int error;





 if (dsb->sb_magicnum == cpu_to_be32(XFS_SB_MAGIC) &&
     (((be16_to_cpu(dsb->sb_versionnum) & XFS_SB_VERSION_NUMBITS) ==
      XFS_SB_VERSION_5) ||
      dsb->sb_crc != 0)) {

  if (!xfs_buf_verify_cksum(bp, XFS_SB_CRC_OFF)) {

   if (bp->b_bn == XFS_SB_DADDR ||
       xfs_sb_version_hascrc(&mp->m_sb)) {
    error = -EFSBADCRC;
    goto out_error;
   }
  }
 }





 __xfs_sb_from_disk(&sb, XFS_BUF_TO_SBP(bp), 0);
 error = xfs_validate_sb_common(mp, bp, &sb);
 if (error)
  goto out_error;
 error = xfs_validate_sb_read(mp, &sb);

out_error:
 if (error == -EFSCORRUPTED || error == -EFSBADCRC)
  xfs_verifier_error(bp, error, __this_address);
 else if (error)
  xfs_buf_ioerror(bp, error);
}
