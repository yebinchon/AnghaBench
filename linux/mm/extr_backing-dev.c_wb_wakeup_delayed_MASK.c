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
struct bdi_writeback {int /*<<< orphan*/  work_lock; int /*<<< orphan*/  dwork; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  WB_registered ; 
 int /*<<< orphan*/  bdi_wq ; 
 int dirty_writeback_interval ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct bdi_writeback *wb)
{
	unsigned long timeout;

	timeout = FUNC0(dirty_writeback_interval * 10);
	FUNC2(&wb->work_lock);
	if (FUNC4(WB_registered, &wb->state))
		FUNC1(bdi_wq, &wb->dwork, timeout);
	FUNC3(&wb->work_lock);
}