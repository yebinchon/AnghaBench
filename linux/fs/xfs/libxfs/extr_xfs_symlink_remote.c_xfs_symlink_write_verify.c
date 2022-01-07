
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_failaddr_t ;
struct xfs_mount {int m_sb; } ;
struct xfs_dsymlink_hdr {int sl_lsn; } ;
struct TYPE_2__ {int li_lsn; } ;
struct xfs_buf_log_item {TYPE_1__ bli_item; } ;
struct xfs_buf {struct xfs_dsymlink_hdr* b_addr; struct xfs_buf_log_item* b_log_item; struct xfs_mount* b_mount; } ;


 int EFSCORRUPTED ;
 int XFS_SYMLINK_CRC_OFF ;
 int cpu_to_be64 (int ) ;
 int xfs_buf_update_cksum (struct xfs_buf*,int ) ;
 int xfs_sb_version_hascrc (int *) ;
 scalar_t__ xfs_symlink_verify (struct xfs_buf*) ;
 int xfs_verifier_error (struct xfs_buf*,int ,scalar_t__) ;

__attribute__((used)) static void
xfs_symlink_write_verify(
 struct xfs_buf *bp)
{
 struct xfs_mount *mp = bp->b_mount;
 struct xfs_buf_log_item *bip = bp->b_log_item;
 xfs_failaddr_t fa;


 if (!xfs_sb_version_hascrc(&mp->m_sb))
  return;

 fa = xfs_symlink_verify(bp);
 if (fa) {
  xfs_verifier_error(bp, -EFSCORRUPTED, fa);
  return;
 }

 if (bip) {
  struct xfs_dsymlink_hdr *dsl = bp->b_addr;
  dsl->sl_lsn = cpu_to_be64(bip->bli_item.li_lsn);
 }
 xfs_buf_update_cksum(bp, XFS_SYMLINK_CRC_OFF);
}
