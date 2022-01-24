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
 int /*<<< orphan*/  HZ ; 
 int PERF_ATTACH_TASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct perf_event*) ; 
 scalar_t__ FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  nr_bpf_events ; 
 int /*<<< orphan*/  nr_comm_events ; 
 int /*<<< orphan*/  nr_ksymbol_events ; 
 int /*<<< orphan*/  nr_mmap_events ; 
 int /*<<< orphan*/  nr_namespaces_events ; 
 int /*<<< orphan*/  nr_switch_events ; 
 int /*<<< orphan*/  nr_task_events ; 
 int /*<<< orphan*/  perf_sched_count ; 
 int /*<<< orphan*/  perf_sched_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*) ; 

__attribute__((used)) static void FUNC8(struct perf_event *event)
{
	bool dec = false;

	if (event->parent)
		return;

	if (event->attach_state & PERF_ATTACH_TASK)
		dec = true;
	if (event->attr.mmap || event->attr.mmap_data)
		FUNC1(&nr_mmap_events);
	if (event->attr.comm)
		FUNC1(&nr_comm_events);
	if (event->attr.namespaces)
		FUNC1(&nr_namespaces_events);
	if (event->attr.task)
		FUNC1(&nr_task_events);
	if (event->attr.freq)
		FUNC6();
	if (event->attr.context_switch) {
		dec = true;
		FUNC1(&nr_switch_events);
	}
	if (FUNC3(event))
		dec = true;
	if (FUNC2(event))
		dec = true;
	if (event->attr.ksymbol)
		FUNC1(&nr_ksymbol_events);
	if (event->attr.bpf_event)
		FUNC1(&nr_bpf_events);

	if (dec) {
		if (!FUNC0(&perf_sched_count, -1, 1))
			FUNC4(&perf_sched_work, HZ);
	}

	FUNC5(event, event->cpu);

	FUNC7(event);
}