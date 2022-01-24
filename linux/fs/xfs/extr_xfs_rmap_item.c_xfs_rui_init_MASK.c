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
struct TYPE_2__ {uintptr_t rui_id; scalar_t__ rui_nextents; } ;
struct xfs_rui_log_item {int /*<<< orphan*/  rui_refcount; int /*<<< orphan*/  rui_next_extent; TYPE_1__ rui_format; int /*<<< orphan*/  rui_item; } ;
struct xfs_mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_LI_RUI ; 
 scalar_t__ XFS_RUI_MAX_FAST_EXTENTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct xfs_rui_log_item* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xfs_rui_log_item* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_rui_item_ops ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  xfs_rui_zone ; 

struct xfs_rui_log_item *
FUNC6(
	struct xfs_mount		*mp,
	uint				nextents)

{
	struct xfs_rui_log_item		*ruip;

	FUNC0(nextents > 0);
	if (nextents > XFS_RUI_MAX_FAST_EXTENTS)
		ruip = FUNC2(FUNC5(nextents), 0);
	else
		ruip = FUNC3(xfs_rui_zone, 0);

	FUNC4(mp, &ruip->rui_item, XFS_LI_RUI, &xfs_rui_item_ops);
	ruip->rui_format.rui_nextents = nextents;
	ruip->rui_format.rui_id = (uintptr_t)(void *)ruip;
	FUNC1(&ruip->rui_next_extent, 0);
	FUNC1(&ruip->rui_refcount, 2);

	return ruip;
}