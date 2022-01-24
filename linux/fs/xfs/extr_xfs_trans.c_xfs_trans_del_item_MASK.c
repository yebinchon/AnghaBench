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
struct xfs_log_item {int /*<<< orphan*/  li_trans; int /*<<< orphan*/  li_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_LI_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(
	struct xfs_log_item	*lip)
{
	FUNC0(XFS_LI_DIRTY, &lip->li_flags);
	FUNC1(&lip->li_trans);
}