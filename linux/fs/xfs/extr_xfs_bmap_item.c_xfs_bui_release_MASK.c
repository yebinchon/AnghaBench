#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xfs_bui_log_item {int /*<<< orphan*/  bui_item; int /*<<< orphan*/  bui_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SHUTDOWN_LOG_IO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_bui_log_item*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(
	struct xfs_bui_log_item	*buip)
{
	FUNC0(FUNC2(&buip->bui_refcount) > 0);
	if (FUNC1(&buip->bui_refcount)) {
		FUNC4(&buip->bui_item, SHUTDOWN_LOG_IO_ERROR);
		FUNC3(buip);
	}
}