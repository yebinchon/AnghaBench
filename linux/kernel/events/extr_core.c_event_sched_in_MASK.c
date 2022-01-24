#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct perf_event_context {int /*<<< orphan*/  nr_freq; int /*<<< orphan*/  nr_active; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {scalar_t__ exclusive; scalar_t__ sample_freq; scalar_t__ freq; } ;
struct TYPE_5__ {scalar_t__ interrupts; } ;
struct perf_event {scalar_t__ state; int oncpu; TYPE_3__* pmu; TYPE_2__ attr; TYPE_1__ hw; } ;
struct perf_cpu_context {int exclusive; int /*<<< orphan*/  active_oncpu; } ;
struct TYPE_7__ {scalar_t__ (* add ) (struct perf_event*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ MAX_INTERRUPTS ; 
 int /*<<< orphan*/  PERF_EF_START ; 
 int /*<<< orphan*/  PERF_EVENT_STATE_ACTIVE ; 
 int /*<<< orphan*/  PERF_EVENT_STATE_INACTIVE ; 
 scalar_t__ PERF_EVENT_STATE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct perf_event*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (struct perf_event*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int
FUNC14(struct perf_event *event,
		 struct perf_cpu_context *cpuctx,
		 struct perf_event_context *ctx)
{
	int ret = 0;

	FUNC2(&ctx->lock);

	if (event->state <= PERF_EVENT_STATE_OFF)
		return 0;

	FUNC0(event->oncpu, FUNC10());
	/*
	 * Order event::oncpu write to happen before the ACTIVE state is
	 * visible. This allows perf_event_{stop,read}() to observe the correct
	 * ->oncpu if it sees ACTIVE.
	 */
	FUNC11();
	FUNC4(event, PERF_EVENT_STATE_ACTIVE);

	/*
	 * Unthrottle events, since we scheduled we might have missed several
	 * ticks already, also for a heavily scheduling task there is little
	 * guarantee it'll get a tick in a timely manner.
	 */
	if (FUNC13(event->hw.interrupts == MAX_INTERRUPTS)) {
		FUNC6(event, 1);
		event->hw.interrupts = 0;
	}

	FUNC7(event->pmu);

	FUNC9(event, ctx);

	FUNC5(event);

	if (event->pmu->add(event, PERF_EF_START)) {
		FUNC4(event, PERF_EVENT_STATE_INACTIVE);
		event->oncpu = -1;
		ret = -EAGAIN;
		goto out;
	}

	if (!FUNC1(event))
		cpuctx->active_oncpu++;
	if (!ctx->nr_active++)
		FUNC3(ctx);
	if (event->attr.freq && event->attr.sample_freq)
		ctx->nr_freq++;

	if (event->attr.exclusive)
		cpuctx->exclusive = 1;

out:
	FUNC8(event->pmu);

	return ret;
}