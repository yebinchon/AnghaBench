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
struct bdi_writeback {TYPE_1__* bdi; int /*<<< orphan*/  avg_write_bandwidth; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  tot_write_bandwidth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WB_has_dirty_io ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct bdi_writeback*) ; 

__attribute__((used)) static bool FUNC4(struct bdi_writeback *wb)
{
	if (FUNC3(wb)) {
		return false;
	} else {
		FUNC2(WB_has_dirty_io, &wb->state);
		FUNC0(!wb->avg_write_bandwidth);
		FUNC1(wb->avg_write_bandwidth,
				&wb->bdi->tot_write_bandwidth);
		return true;
	}
}