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
typedef  int u64 ;
struct hw_perf_event {int last_period; int sample_period; int /*<<< orphan*/  period_left; } ;
struct perf_event {struct hw_perf_event hw; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

u64 FUNC3(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	u64 period = hwc->last_period;
	u64 nr, offset;
	s64 old, val;

	hwc->last_period = hwc->sample_period;

again:
	old = val = FUNC2(&hwc->period_left);
	if (val < 0)
		return 0;

	nr = FUNC0(period + val, period);
	offset = nr * period;
	val -= offset;
	if (FUNC1(&hwc->period_left, old, val) != old)
		goto again;

	return nr;
}