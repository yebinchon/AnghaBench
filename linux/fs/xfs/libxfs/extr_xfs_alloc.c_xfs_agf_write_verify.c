
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_failaddr_t ;
struct xfs_mount {int m_sb; } ;
struct TYPE_3__ {int li_lsn; } ;
struct xfs_buf_log_item {TYPE_1__ bli_item; } ;
struct xfs_buf {struct xfs_buf_log_item* b_log_item; struct xfs_mount* b_mount; } ;
struct TYPE_4__ {int agf_lsn; } ;


 int EFSCORRUPTED ;
 int XFS_AGF_CRC_OFF ;
 TYPE_2__* XFS_BUF_TO_AGF (struct xfs_buf*) ;
 int cpu_to_be64 (int ) ;
 scalar_t__ xfs_agf_verify (struct xfs_buf*) ;
 int xfs_buf_update_cksum (struct xfs_buf*,int ) ;
 int xfs_sb_version_hascrc (int *) ;
 int xfs_verifier_error (struct xfs_buf*,int ,scalar_t__) ;

__attribute__((used)) static void
xfs_agf_write_verify(
 struct xfs_buf *bp)
{
 struct xfs_mount *mp = bp->b_mount;
 struct xfs_buf_log_item *bip = bp->b_log_item;
 xfs_failaddr_t fa;

 fa = xfs_agf_verify(bp);
 if (fa) {
  xfs_verifier_error(bp, -EFSCORRUPTED, fa);
  return;
 }

 if (!xfs_sb_version_hascrc(&mp->m_sb))
  return;

 if (bip)
  XFS_BUF_TO_AGF(bp)->agf_lsn = cpu_to_be64(bip->bli_item.li_lsn);

 xfs_buf_update_cksum(bp, XFS_AGF_CRC_OFF);
}
