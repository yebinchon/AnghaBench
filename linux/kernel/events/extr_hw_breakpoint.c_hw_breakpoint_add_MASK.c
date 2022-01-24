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
struct TYPE_2__ {int /*<<< orphan*/  sample_period; int /*<<< orphan*/  last_period; int /*<<< orphan*/  state; } ;
struct perf_event {TYPE_1__ hw; } ;

/* Variables and functions */
 int PERF_EF_START ; 
 int /*<<< orphan*/  PERF_HES_STOPPED ; 
 int FUNC0 (struct perf_event*) ; 
 scalar_t__ FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 

__attribute__((used)) static int FUNC3(struct perf_event *bp, int flags)
{
	if (!(flags & PERF_EF_START))
		bp->hw.state = PERF_HES_STOPPED;

	if (FUNC1(bp)) {
		bp->hw.last_period = bp->hw.sample_period;
		FUNC2(bp);
	}

	return FUNC0(bp);
}