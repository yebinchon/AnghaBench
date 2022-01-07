
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_mount {int m_sb; } ;
struct xfs_buf {struct xfs_mount* b_mount; } ;
struct TYPE_3__ {int bb_lsn; } ;
struct TYPE_4__ {TYPE_1__ l; } ;
struct xfs_btree_block {TYPE_2__ bb_u; } ;


 int XFS_BTREE_LBLOCK_CRC_OFF ;
 struct xfs_btree_block* XFS_BUF_TO_BLOCK (struct xfs_buf*) ;
 int be64_to_cpu (int ) ;
 int xfs_buf_verify_cksum (struct xfs_buf*,int ) ;
 int xfs_log_check_lsn (struct xfs_mount*,int ) ;
 scalar_t__ xfs_sb_version_hascrc (int *) ;

bool
xfs_btree_lblock_verify_crc(
 struct xfs_buf *bp)
{
 struct xfs_btree_block *block = XFS_BUF_TO_BLOCK(bp);
 struct xfs_mount *mp = bp->b_mount;

 if (xfs_sb_version_hascrc(&mp->m_sb)) {
  if (!xfs_log_check_lsn(mp, be64_to_cpu(block->bb_u.l.bb_lsn)))
   return 0;
  return xfs_buf_verify_cksum(bp, XFS_BTREE_LBLOCK_CRC_OFF);
 }

 return 1;
}
