#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xfs_trans {int /*<<< orphan*/  t_mountp; } ;
struct xfs_extent {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  efi_id; } ;
struct xfs_efi_log_item {TYPE_2__ efi_format; } ;
struct TYPE_3__ {unsigned int efd_nextents; int /*<<< orphan*/  efd_efi_id; } ;
struct xfs_efd_log_item {int /*<<< orphan*/  efd_item; TYPE_1__ efd_format; struct xfs_efi_log_item* efd_efip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int XFS_EFD_MAX_FAST_EXTENTS ; 
 int /*<<< orphan*/  XFS_LI_EFD ; 
 struct xfs_efd_log_item* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct xfs_efd_log_item* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_efd_item_ops ; 
 int /*<<< orphan*/  xfs_efd_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_trans*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct xfs_efd_log_item *
FUNC5(
	struct xfs_trans		*tp,
	struct xfs_efi_log_item		*efip,
	unsigned int			nextents)
{
	struct xfs_efd_log_item		*efdp;

	FUNC0(nextents > 0);

	if (nextents > XFS_EFD_MAX_FAST_EXTENTS) {
		efdp = FUNC1(sizeof(struct xfs_efd_log_item) +
				(nextents - 1) * sizeof(struct xfs_extent),
				0);
	} else {
		efdp = FUNC2(xfs_efd_zone, 0);
	}

	FUNC3(tp->t_mountp, &efdp->efd_item, XFS_LI_EFD,
			  &xfs_efd_item_ops);
	efdp->efd_efip = efip;
	efdp->efd_format.efd_nextents = nextents;
	efdp->efd_format.efd_efi_id = efip->efi_format.efi_id;

	FUNC4(tp, &efdp->efd_item);
	return efdp;
}