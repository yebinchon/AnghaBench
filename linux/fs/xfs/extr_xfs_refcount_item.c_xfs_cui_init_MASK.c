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
typedef  scalar_t__ uint ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {uintptr_t cui_id; scalar_t__ cui_nextents; } ;
struct xfs_cui_log_item {int /*<<< orphan*/  cui_refcount; int /*<<< orphan*/  cui_next_extent; TYPE_1__ cui_format; int /*<<< orphan*/  cui_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_CUI_MAX_FAST_EXTENTS ; 
 int /*<<< orphan*/  XFS_LI_CUI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct xfs_cui_log_item* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xfs_cui_log_item* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_cui_item_ops ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  xfs_cui_zone ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct xfs_cui_log_item *
FUNC6(
	struct xfs_mount		*mp,
	uint				nextents)

{
	struct xfs_cui_log_item		*cuip;

	FUNC0(nextents > 0);
	if (nextents > XFS_CUI_MAX_FAST_EXTENTS)
		cuip = FUNC2(FUNC4(nextents),
				0);
	else
		cuip = FUNC3(xfs_cui_zone, 0);

	FUNC5(mp, &cuip->cui_item, XFS_LI_CUI, &xfs_cui_item_ops);
	cuip->cui_format.cui_nextents = nextents;
	cuip->cui_format.cui_id = (uintptr_t)(void *)cuip;
	FUNC1(&cuip->cui_next_extent, 0);
	FUNC1(&cuip->cui_refcount, 2);

	return cuip;
}