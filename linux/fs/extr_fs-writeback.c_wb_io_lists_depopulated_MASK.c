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
struct bdi_writeback {TYPE_1__* bdi; int /*<<< orphan*/  avg_write_bandwidth; int /*<<< orphan*/  state; int /*<<< orphan*/  b_more_io; int /*<<< orphan*/  b_io; int /*<<< orphan*/  b_dirty; } ;
struct TYPE_2__ {int /*<<< orphan*/  tot_write_bandwidth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WB_has_dirty_io ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct bdi_writeback*) ; 

__attribute__((used)) static void FUNC5(struct bdi_writeback *wb)
{
	if (FUNC4(wb) && FUNC3(&wb->b_dirty) &&
	    FUNC3(&wb->b_io) && FUNC3(&wb->b_more_io)) {
		FUNC2(WB_has_dirty_io, &wb->state);
		FUNC0(FUNC1(wb->avg_write_bandwidth,
					&wb->bdi->tot_write_bandwidth) < 0);
	}
}