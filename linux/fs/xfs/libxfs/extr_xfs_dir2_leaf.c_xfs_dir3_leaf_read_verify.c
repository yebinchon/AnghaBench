
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_failaddr_t ;
struct xfs_mount {int m_sb; } ;
struct xfs_buf {struct xfs_mount* b_mount; } ;


 int EFSBADCRC ;
 int EFSCORRUPTED ;
 int XFS_DIR3_LEAF_CRC_OFF ;
 scalar_t__ __this_address ;
 int xfs_buf_verify_cksum (struct xfs_buf*,int ) ;
 scalar_t__ xfs_dir3_leaf_verify (struct xfs_buf*) ;
 scalar_t__ xfs_sb_version_hascrc (int *) ;
 int xfs_verifier_error (struct xfs_buf*,int ,scalar_t__) ;

__attribute__((used)) static void
xfs_dir3_leaf_read_verify(
 struct xfs_buf *bp)
{
 struct xfs_mount *mp = bp->b_mount;
 xfs_failaddr_t fa;

 if (xfs_sb_version_hascrc(&mp->m_sb) &&
      !xfs_buf_verify_cksum(bp, XFS_DIR3_LEAF_CRC_OFF))
  xfs_verifier_error(bp, -EFSBADCRC, __this_address);
 else {
  fa = xfs_dir3_leaf_verify(bp);
  if (fa)
   xfs_verifier_error(bp, -EFSCORRUPTED, fa);
 }
}
