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
struct bdi_writeback {int /*<<< orphan*/  work_list; int /*<<< orphan*/  dwork; int /*<<< orphan*/  work_lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WB_registered ; 
 int /*<<< orphan*/  bdi_wq ; 
 int /*<<< orphan*/  FUNC1 (struct bdi_writeback*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct bdi_writeback *wb)
{
	/* Make sure nobody queues further work */
	FUNC5(&wb->work_lock);
	if (!FUNC7(WB_registered, &wb->state)) {
		FUNC6(&wb->work_lock);
		return;
	}
	FUNC6(&wb->work_lock);

	FUNC1(wb);
	/*
	 * Drain work list and shutdown the delayed_work.  !WB_registered
	 * tells wb_workfn() that @wb is dying and its work_list needs to
	 * be drained no matter what.
	 */
	FUNC4(bdi_wq, &wb->dwork, 0);
	FUNC2(&wb->dwork);
	FUNC0(!FUNC3(&wb->work_list));
}