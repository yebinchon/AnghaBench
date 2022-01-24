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
struct xfs_pwork_ctl {int /*<<< orphan*/  nr_work; int /*<<< orphan*/  poll_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC3(
	struct xfs_pwork_ctl	*pctl)
{
	while (FUNC2(pctl->poll_wait,
				FUNC0(&pctl->nr_work) == 0, HZ) == 0)
		FUNC1();
}