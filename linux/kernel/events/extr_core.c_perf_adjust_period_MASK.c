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
typedef  int /*<<< orphan*/  u64 ;
struct hw_perf_event {int sample_period; int /*<<< orphan*/  period_left; } ;
struct perf_event {TYPE_1__* pmu; struct hw_perf_event hw; } ;
typedef  int s64 ;
struct TYPE_2__ {int /*<<< orphan*/  (* start ) (struct perf_event*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* stop ) (struct perf_event*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_RELOAD ; 
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct perf_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event, u64 nsec, u64 count, bool disable)
{
	struct hw_perf_event *hwc = &event->hw;
	s64 period, sample_period;
	s64 delta;

	period = FUNC2(event, nsec, count);

	delta = (s64)(period - hwc->sample_period);
	delta = (delta + 7) / 8; /* low pass filter */

	sample_period = hwc->sample_period + delta;

	if (!sample_period)
		sample_period = 1;

	hwc->sample_period = sample_period;

	if (FUNC0(&hwc->period_left) > 8*sample_period) {
		if (disable)
			event->pmu->stop(event, PERF_EF_UPDATE);

		FUNC1(&hwc->period_left, 0);

		if (disable)
			event->pmu->start(event, PERF_EF_RELOAD);
	}
}