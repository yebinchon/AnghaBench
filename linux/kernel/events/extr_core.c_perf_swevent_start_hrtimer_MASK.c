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
struct hw_perf_event {int /*<<< orphan*/  hrtimer; int /*<<< orphan*/  sample_period; int /*<<< orphan*/  period_left; } ;
struct perf_event {struct hw_perf_event hw; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL_PINNED_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  u64 ; 

__attribute__((used)) static void FUNC6(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	s64 period;

	if (!FUNC1(event))
		return;

	period = FUNC2(&hwc->period_left);
	if (period) {
		if (period < 0)
			period = 10000;

		FUNC3(&hwc->period_left, 0);
	} else {
		period = FUNC4(u64, 10000, hwc->sample_period);
	}
	FUNC0(&hwc->hrtimer, FUNC5(period),
		      HRTIMER_MODE_REL_PINNED_HARD);
}