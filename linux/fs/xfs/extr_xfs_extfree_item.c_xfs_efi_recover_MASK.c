#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_fsblock_t ;
struct TYPE_7__ {scalar_t__ ext_len; int /*<<< orphan*/  ext_start; } ;
typedef  TYPE_3__ xfs_extent_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_5__ {scalar_t__ sb_dblocks; scalar_t__ sb_agblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct TYPE_6__ {int efi_nextents; TYPE_3__* efi_extents; } ;
struct xfs_efi_log_item {int /*<<< orphan*/  efi_flags; TYPE_2__ efi_format; } ;
struct xfs_efd_log_item {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  tr_itruncate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 TYPE_4__* FUNC1 (struct xfs_mount*) ; 
 scalar_t__ FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_EFI_RECOVERED ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_RMAP_OINFO_ANY_OWNER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_efi_log_item*) ; 
 int FUNC7 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_trans*) ; 
 int FUNC9 (struct xfs_trans*) ; 
 int FUNC10 (struct xfs_trans*,struct xfs_efd_log_item*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 struct xfs_efd_log_item* FUNC11 (struct xfs_trans*,struct xfs_efi_log_item*,int) ; 

int
FUNC12(
	struct xfs_mount	*mp,
	struct xfs_efi_log_item	*efip)
{
	struct xfs_efd_log_item	*efdp;
	struct xfs_trans	*tp;
	int			i;
	int			error = 0;
	xfs_extent_t		*extp;
	xfs_fsblock_t		startblock_fsb;

	FUNC0(!FUNC5(XFS_EFI_RECOVERED, &efip->efi_flags));

	/*
	 * First check the validity of the extents described by the
	 * EFI.  If any are bad, then assume that all are bad and
	 * just toss the EFI.
	 */
	for (i = 0; i < efip->efi_format.efi_nextents; i++) {
		extp = &efip->efi_format.efi_extents[i];
		startblock_fsb = FUNC2(mp,
				   FUNC3(mp, extp->ext_start));
		if (startblock_fsb == 0 ||
		    extp->ext_len == 0 ||
		    startblock_fsb >= mp->m_sb.sb_dblocks ||
		    extp->ext_len >= mp->m_sb.sb_agblocks) {
			/*
			 * This will pull the EFI from the AIL and
			 * free the memory associated with it.
			 */
			FUNC4(XFS_EFI_RECOVERED, &efip->efi_flags);
			FUNC6(efip);
			return -EIO;
		}
	}

	error = FUNC7(mp, &FUNC1(mp)->tr_itruncate, 0, 0, 0, &tp);
	if (error)
		return error;
	efdp = FUNC11(tp, efip, efip->efi_format.efi_nextents);

	for (i = 0; i < efip->efi_format.efi_nextents; i++) {
		extp = &efip->efi_format.efi_extents[i];
		error = FUNC10(tp, efdp, extp->ext_start,
					      extp->ext_len,
					      &XFS_RMAP_OINFO_ANY_OWNER, false);
		if (error)
			goto abort_error;

	}

	FUNC4(XFS_EFI_RECOVERED, &efip->efi_flags);
	error = FUNC9(tp);
	return error;

abort_error:
	FUNC8(tp);
	return error;
}