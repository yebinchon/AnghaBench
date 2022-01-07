
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int li_lsn; } ;
struct xfs_buf_log_item {TYPE_4__ bli_item; } ;
struct xfs_buf {TYPE_1__* b_mount; struct xfs_buf_log_item* b_log_item; } ;
struct TYPE_6__ {int bb_lsn; } ;
struct TYPE_7__ {TYPE_2__ l; } ;
struct xfs_btree_block {TYPE_3__ bb_u; } ;
struct TYPE_5__ {int m_sb; } ;


 int XFS_BTREE_LBLOCK_CRC_OFF ;
 struct xfs_btree_block* XFS_BUF_TO_BLOCK (struct xfs_buf*) ;
 int cpu_to_be64 (int ) ;
 int xfs_buf_update_cksum (struct xfs_buf*,int ) ;
 int xfs_sb_version_hascrc (int *) ;

void
xfs_btree_lblock_calc_crc(
 struct xfs_buf *bp)
{
 struct xfs_btree_block *block = XFS_BUF_TO_BLOCK(bp);
 struct xfs_buf_log_item *bip = bp->b_log_item;

 if (!xfs_sb_version_hascrc(&bp->b_mount->m_sb))
  return;
 if (bip)
  block->bb_u.l.bb_lsn = cpu_to_be64(bip->bli_item.li_lsn);
 xfs_buf_update_cksum(bp, XFS_BTREE_LBLOCK_CRC_OFF);
}
