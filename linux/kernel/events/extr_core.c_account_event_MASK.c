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
struct TYPE_2__ {scalar_t__ bpf_event; scalar_t__ ksymbol; scalar_t__ context_switch; scalar_t__ freq; scalar_t__ task; scalar_t__ namespaces; scalar_t__ comm; scalar_t__ mmap_data; scalar_t__ mmap; } ;
struct perf_event {int attach_state; int /*<<< orphan*/  cpu; TYPE_1__ attr; scalar_t__ parent; } ;

/* Variables and functions */
 int PERF_ATTACH_TASK ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct perf_event*) ; 
 scalar_t__ FUNC7 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_bpf_events ; 
 int /*<<< orphan*/  nr_comm_events ; 
 int /*<<< orphan*/  nr_ksymbol_events ; 
 int /*<<< orphan*/  nr_mmap_events ; 
 int /*<<< orphan*/  nr_namespaces_events ; 
 int /*<<< orphan*/  nr_switch_events ; 
 int /*<<< orphan*/  nr_task_events ; 
 int /*<<< orphan*/  perf_sched_count ; 
 int /*<<< orphan*/  perf_sched_events ; 
 int /*<<< orphan*/  perf_sched_mutex ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct perf_event *event)
{
	bool inc = false;

	if (event->parent)
		return;

	if (event->attach_state & PERF_ATTACH_TASK)
		inc = true;
	if (event->attr.mmap || event->attr.mmap_data)
		FUNC3(&nr_mmap_events);
	if (event->attr.comm)
		FUNC3(&nr_comm_events);
	if (event->attr.namespaces)
		FUNC3(&nr_namespaces_events);
	if (event->attr.task)
		FUNC3(&nr_task_events);
	if (event->attr.freq)
		FUNC1();
	if (event->attr.context_switch) {
		FUNC3(&nr_switch_events);
		inc = true;
	}
	if (FUNC6(event))
		inc = true;
	if (FUNC7(event))
		inc = true;
	if (event->attr.ksymbol)
		FUNC3(&nr_ksymbol_events);
	if (event->attr.bpf_event)
		FUNC3(&nr_bpf_events);

	if (inc) {
		/*
		 * We need the mutex here because static_branch_enable()
		 * must complete *before* the perf_sched_count increment
		 * becomes visible.
		 */
		if (FUNC4(&perf_sched_count))
			goto enabled;

		FUNC8(&perf_sched_mutex);
		if (!FUNC5(&perf_sched_count)) {
			FUNC10(&perf_sched_events);
			/*
			 * Guarantee that all CPUs observe they key change and
			 * call the perf scheduling hooks before proceeding to
			 * install events that need them.
			 */
			FUNC11();
		}
		/*
		 * Now that we have waited for the sync_sched(), allow further
		 * increments to by-pass the mutex.
		 */
		FUNC3(&perf_sched_count);
		FUNC9(&perf_sched_mutex);
	}
enabled:

	FUNC0(event, event->cpu);

	FUNC2(event);
}