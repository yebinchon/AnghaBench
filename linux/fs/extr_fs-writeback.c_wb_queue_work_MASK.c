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
struct wb_writeback_work {int /*<<< orphan*/  list; TYPE_1__* done; } ;
struct bdi_writeback {int /*<<< orphan*/  work_lock; int /*<<< orphan*/  dwork; int /*<<< orphan*/  work_list; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  WB_registered ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bdi_wq ; 
 int /*<<< orphan*/  FUNC1 (struct bdi_writeback*,struct wb_writeback_work*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bdi_writeback*,struct wb_writeback_work*) ; 

__attribute__((used)) static void FUNC8(struct bdi_writeback *wb,
			  struct wb_writeback_work *work)
{
	FUNC7(wb, work);

	if (work->done)
		FUNC0(&work->done->cnt);

	FUNC4(&wb->work_lock);

	if (FUNC6(WB_registered, &wb->state)) {
		FUNC2(&work->list, &wb->work_list);
		FUNC3(bdi_wq, &wb->dwork, 0);
	} else
		FUNC1(wb, work);

	FUNC5(&wb->work_lock);
}