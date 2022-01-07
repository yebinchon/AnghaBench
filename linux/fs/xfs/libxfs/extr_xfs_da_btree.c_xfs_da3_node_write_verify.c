
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_failaddr_t ;
struct xfs_mount {int m_sb; } ;
struct TYPE_3__ {int lsn; } ;
struct xfs_da3_node_hdr {TYPE_1__ info; } ;
struct TYPE_4__ {int li_lsn; } ;
struct xfs_buf_log_item {TYPE_2__ bli_item; } ;
struct xfs_buf {struct xfs_da3_node_hdr* b_addr; struct xfs_buf_log_item* b_log_item; struct xfs_mount* b_mount; } ;


 int EFSCORRUPTED ;
 int XFS_DA3_NODE_CRC_OFF ;
 int cpu_to_be64 (int ) ;
 int xfs_buf_update_cksum (struct xfs_buf*,int ) ;
 scalar_t__ xfs_da3_node_verify (struct xfs_buf*) ;
 int xfs_sb_version_hascrc (int *) ;
 int xfs_verifier_error (struct xfs_buf*,int ,scalar_t__) ;

__attribute__((used)) static void
xfs_da3_node_write_verify(
 struct xfs_buf *bp)
{
 struct xfs_mount *mp = bp->b_mount;
 struct xfs_buf_log_item *bip = bp->b_log_item;
 struct xfs_da3_node_hdr *hdr3 = bp->b_addr;
 xfs_failaddr_t fa;

 fa = xfs_da3_node_verify(bp);
 if (fa) {
  xfs_verifier_error(bp, -EFSCORRUPTED, fa);
  return;
 }

 if (!xfs_sb_version_hascrc(&mp->m_sb))
  return;

 if (bip)
  hdr3->info.lsn = cpu_to_be64(bip->bli_item.li_lsn);

 xfs_buf_update_cksum(bp, XFS_DA3_NODE_CRC_OFF);
}
