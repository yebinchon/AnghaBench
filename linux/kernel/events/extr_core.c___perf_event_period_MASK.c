#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct perf_event_context {int /*<<< orphan*/  pmu; } ;
struct TYPE_5__ {scalar_t__ interrupts; int /*<<< orphan*/  period_left; void* sample_period; } ;
struct TYPE_4__ {void* sample_period; void* sample_freq; scalar_t__ freq; } ;
struct perf_event {scalar_t__ state; TYPE_3__* pmu; TYPE_2__ hw; TYPE_1__ attr; } ;
struct perf_cpu_context {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* start ) (struct perf_event*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* stop ) (struct perf_event*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ MAX_INTERRUPTS ; 
 int /*<<< orphan*/  PERF_EF_RELOAD ; 
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 scalar_t__ PERF_EVENT_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event,
				struct perf_cpu_context *cpuctx,
				struct perf_event_context *ctx,
				void *info)
{
	u64 value = *((u64 *)info);
	bool active;

	if (event->attr.freq) {
		event->attr.sample_freq = value;
	} else {
		event->attr.sample_period = value;
		event->hw.sample_period = value;
	}

	active = (event->state == PERF_EVENT_STATE_ACTIVE);
	if (active) {
		FUNC2(ctx->pmu);
		/*
		 * We could be throttled; unthrottle now to avoid the tick
		 * trying to unthrottle while we already re-started the event.
		 */
		if (event->hw.interrupts == MAX_INTERRUPTS) {
			event->hw.interrupts = 0;
			FUNC1(event, 1);
		}
		event->pmu->stop(event, PERF_EF_UPDATE);
	}

	FUNC0(&event->hw.period_left, 0);

	if (active) {
		event->pmu->start(event, PERF_EF_RELOAD);
		FUNC3(ctx->pmu);
	}
}