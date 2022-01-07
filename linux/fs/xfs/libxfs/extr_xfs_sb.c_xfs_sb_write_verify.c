
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_sb {int dummy; } ;
struct xfs_mount {int m_sb; } ;
struct TYPE_4__ {int li_lsn; } ;
struct xfs_buf_log_item {TYPE_1__ bli_item; } ;
struct xfs_buf {struct xfs_buf_log_item* b_log_item; struct xfs_mount* b_mount; } ;
struct TYPE_5__ {int sb_lsn; } ;


 TYPE_2__* XFS_BUF_TO_SBP (struct xfs_buf*) ;
 int XFS_SB_CRC_OFF ;
 int __this_address ;
 int __xfs_sb_from_disk (struct xfs_sb*,TYPE_2__*,int) ;
 int cpu_to_be64 (int ) ;
 int xfs_buf_update_cksum (struct xfs_buf*,int ) ;
 int xfs_sb_version_hascrc (int *) ;
 int xfs_validate_sb_common (struct xfs_mount*,struct xfs_buf*,struct xfs_sb*) ;
 int xfs_validate_sb_write (struct xfs_mount*,struct xfs_buf*,struct xfs_sb*) ;
 int xfs_verifier_error (struct xfs_buf*,int,int ) ;

__attribute__((used)) static void
xfs_sb_write_verify(
 struct xfs_buf *bp)
{
 struct xfs_sb sb;
 struct xfs_mount *mp = bp->b_mount;
 struct xfs_buf_log_item *bip = bp->b_log_item;
 int error;





 __xfs_sb_from_disk(&sb, XFS_BUF_TO_SBP(bp), 0);
 error = xfs_validate_sb_common(mp, bp, &sb);
 if (error)
  goto out_error;
 error = xfs_validate_sb_write(mp, bp, &sb);
 if (error)
  goto out_error;

 if (!xfs_sb_version_hascrc(&mp->m_sb))
  return;

 if (bip)
  XFS_BUF_TO_SBP(bp)->sb_lsn = cpu_to_be64(bip->bli_item.li_lsn);

 xfs_buf_update_cksum(bp, XFS_SB_CRC_OFF);
 return;

out_error:
 xfs_verifier_error(bp, error, __this_address);
}
