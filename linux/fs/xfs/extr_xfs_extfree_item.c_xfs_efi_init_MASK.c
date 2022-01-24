#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_extent_t ;
typedef  int /*<<< orphan*/  xfs_efi_log_item_t ;
typedef  int uint ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {int efi_nextents; uintptr_t efi_id; } ;
struct xfs_efi_log_item {int /*<<< orphan*/  efi_refcount; int /*<<< orphan*/  efi_next_extent; TYPE_1__ efi_format; int /*<<< orphan*/  efi_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XFS_EFI_MAX_FAST_EXTENTS ; 
 int /*<<< orphan*/  XFS_LI_EFI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct xfs_efi_log_item* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct xfs_efi_log_item* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_efi_item_ops ; 
 int /*<<< orphan*/  xfs_efi_zone ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct xfs_efi_log_item *
FUNC5(
	struct xfs_mount	*mp,
	uint			nextents)

{
	struct xfs_efi_log_item	*efip;
	uint			size;

	FUNC0(nextents > 0);
	if (nextents > XFS_EFI_MAX_FAST_EXTENTS) {
		size = (uint)(sizeof(xfs_efi_log_item_t) +
			((nextents - 1) * sizeof(xfs_extent_t)));
		efip = FUNC2(size, 0);
	} else {
		efip = FUNC3(xfs_efi_zone, 0);
	}

	FUNC4(mp, &efip->efi_item, XFS_LI_EFI, &xfs_efi_item_ops);
	efip->efi_format.efi_nextents = nextents;
	efip->efi_format.efi_id = (uintptr_t)(void *)efip;
	FUNC1(&efip->efi_next_extent, 0);
	FUNC1(&efip->efi_refcount, 2);

	return efip;
}