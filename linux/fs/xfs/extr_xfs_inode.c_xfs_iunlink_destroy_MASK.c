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
struct xfs_perag {int /*<<< orphan*/  pag_mount; int /*<<< orphan*/  pagi_unlinked_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  xfs_iunlink_free_item ; 

void
FUNC3(
	struct xfs_perag	*pag)
{
	bool			freed_anything = false;

	FUNC2(&pag->pagi_unlinked_hash,
			xfs_iunlink_free_item, &freed_anything);

	FUNC0(freed_anything == false || FUNC1(pag->pag_mount));
}