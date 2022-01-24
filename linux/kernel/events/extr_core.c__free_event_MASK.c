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
struct TYPE_5__ {scalar_t__ target; } ;
struct TYPE_4__ {int sample_type; } ;
struct perf_event {int /*<<< orphan*/  rcu_head; TYPE_3__* pmu; scalar_t__ ctx; TYPE_2__ hw; int /*<<< orphan*/  (* destroy ) (struct perf_event*) ;int /*<<< orphan*/  addr_filter_ranges; TYPE_1__ attr; int /*<<< orphan*/  parent; int /*<<< orphan*/  mmap_mutex; scalar_t__ rb; int /*<<< orphan*/  pending; } ;
struct TYPE_6__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int PERF_SAMPLE_CALLCHAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  free_event_rcu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC10 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct perf_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC16 (struct perf_event*) ; 

__attribute__((used)) static void FUNC17(struct perf_event *event)
{
	FUNC2(&event->pending);

	FUNC16(event);

	if (event->rb) {
		/*
		 * Can happen when we close an event with re-directed output.
		 *
		 * Since we have a 0 refcount, perf_mmap_close() will skip
		 * over us; possibly making our ring_buffer_put() the last.
		 */
		FUNC6(&event->mmap_mutex);
		FUNC14(event, NULL);
		FUNC7(&event->mmap_mutex);
	}

	if (FUNC3(event))
		FUNC9(event);

	if (!event->parent) {
		if (event->attr.sample_type & PERF_SAMPLE_CALLCHAIN)
			FUNC11();
	}

	FUNC10(event);
	FUNC8(event, NULL);
	FUNC4(event->addr_filter_ranges);

	if (event->destroy)
		event->destroy(event);

	/*
	 * Must be after ->destroy(), due to uprobe_perf_close() using
	 * hw.target.
	 */
	if (event->hw.target)
		FUNC13(event->hw.target);

	/*
	 * perf_event_free_task() relies on put_ctx() being 'last', in particular
	 * all task references must be cleaned up.
	 */
	if (event->ctx)
		FUNC12(event->ctx);

	FUNC1(event);
	FUNC5(event->pmu->module);

	FUNC0(&event->rcu_head, free_event_rcu);
}