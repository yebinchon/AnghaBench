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
struct arch_hw_breakpoint {int dummy; } ;
struct TYPE_2__ {struct arch_hw_breakpoint info; } ;
struct perf_event {TYPE_1__ hw; int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int FUNC0 (struct perf_event*,int /*<<< orphan*/ *,struct arch_hw_breakpoint*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int FUNC2 (struct perf_event*) ; 

int FUNC3(struct perf_event *bp)
{
	struct arch_hw_breakpoint hw = { };
	int err;

	err = FUNC2(bp);
	if (err)
		return err;

	err = FUNC0(bp, &bp->attr, &hw);
	if (err) {
		FUNC1(bp);
		return err;
	}

	bp->hw.info = hw;

	return 0;
}