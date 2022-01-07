
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_failaddr_t ;
struct xfs_mount {int m_sb; } ;
struct xfs_buf {struct xfs_mount* b_mount; } ;


 int EFSBADCRC ;
 int EFSCORRUPTED ;
 int XFS_AGF_CRC_OFF ;
 int XFS_ERRTAG_ALLOC_READ_AGF ;
 scalar_t__ XFS_TEST_ERROR (int ,struct xfs_mount*,int ) ;
 int __this_address ;
 int xfs_agf_verify (struct xfs_buf*) ;
 int xfs_buf_verify_cksum (struct xfs_buf*,int ) ;
 scalar_t__ xfs_sb_version_hascrc (int *) ;
 int xfs_verifier_error (struct xfs_buf*,int ,int ) ;

__attribute__((used)) static void
xfs_agf_read_verify(
 struct xfs_buf *bp)
{
 struct xfs_mount *mp = bp->b_mount;
 xfs_failaddr_t fa;

 if (xfs_sb_version_hascrc(&mp->m_sb) &&
     !xfs_buf_verify_cksum(bp, XFS_AGF_CRC_OFF))
  xfs_verifier_error(bp, -EFSBADCRC, __this_address);
 else {
  fa = xfs_agf_verify(bp);
  if (XFS_TEST_ERROR(fa, mp, XFS_ERRTAG_ALLOC_READ_AGF))
   xfs_verifier_error(bp, -EFSCORRUPTED, fa);
 }
}
