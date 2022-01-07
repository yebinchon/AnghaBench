
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ xfs_fsblock_t ;
struct TYPE_7__ {scalar_t__ ext_len; int ext_start; } ;
typedef TYPE_3__ xfs_extent_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_5__ {scalar_t__ sb_dblocks; scalar_t__ sb_agblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct TYPE_6__ {int efi_nextents; TYPE_3__* efi_extents; } ;
struct xfs_efi_log_item {int efi_flags; TYPE_2__ efi_format; } ;
struct xfs_efd_log_item {int dummy; } ;
struct TYPE_8__ {int tr_itruncate; } ;


 int ASSERT (int) ;
 int EIO ;
 TYPE_4__* M_RES (struct xfs_mount*) ;
 scalar_t__ XFS_BB_TO_FSB (struct xfs_mount*,int ) ;
 int XFS_EFI_RECOVERED ;
 int XFS_FSB_TO_DADDR (struct xfs_mount*,int ) ;
 int XFS_RMAP_OINFO_ANY_OWNER ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int xfs_efi_release (struct xfs_efi_log_item*) ;
 int xfs_trans_alloc (struct xfs_mount*,int *,int ,int ,int ,struct xfs_trans**) ;
 int xfs_trans_cancel (struct xfs_trans*) ;
 int xfs_trans_commit (struct xfs_trans*) ;
 int xfs_trans_free_extent (struct xfs_trans*,struct xfs_efd_log_item*,int ,scalar_t__,int *,int) ;
 struct xfs_efd_log_item* xfs_trans_get_efd (struct xfs_trans*,struct xfs_efi_log_item*,int) ;

int
xfs_efi_recover(
 struct xfs_mount *mp,
 struct xfs_efi_log_item *efip)
{
 struct xfs_efd_log_item *efdp;
 struct xfs_trans *tp;
 int i;
 int error = 0;
 xfs_extent_t *extp;
 xfs_fsblock_t startblock_fsb;

 ASSERT(!test_bit(XFS_EFI_RECOVERED, &efip->efi_flags));






 for (i = 0; i < efip->efi_format.efi_nextents; i++) {
  extp = &efip->efi_format.efi_extents[i];
  startblock_fsb = XFS_BB_TO_FSB(mp,
       XFS_FSB_TO_DADDR(mp, extp->ext_start));
  if (startblock_fsb == 0 ||
      extp->ext_len == 0 ||
      startblock_fsb >= mp->m_sb.sb_dblocks ||
      extp->ext_len >= mp->m_sb.sb_agblocks) {




   set_bit(XFS_EFI_RECOVERED, &efip->efi_flags);
   xfs_efi_release(efip);
   return -EIO;
  }
 }

 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_itruncate, 0, 0, 0, &tp);
 if (error)
  return error;
 efdp = xfs_trans_get_efd(tp, efip, efip->efi_format.efi_nextents);

 for (i = 0; i < efip->efi_format.efi_nextents; i++) {
  extp = &efip->efi_format.efi_extents[i];
  error = xfs_trans_free_extent(tp, efdp, extp->ext_start,
           extp->ext_len,
           &XFS_RMAP_OINFO_ANY_OWNER, 0);
  if (error)
   goto abort_error;

 }

 set_bit(XFS_EFI_RECOVERED, &efip->efi_flags);
 error = xfs_trans_commit(tp);
 return error;

abort_error:
 xfs_trans_cancel(tp);
 return error;
}
