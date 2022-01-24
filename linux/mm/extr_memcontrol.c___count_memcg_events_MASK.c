#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mem_cgroup {TYPE_2__* vmstats_percpu; int /*<<< orphan*/ * vmevents; TYPE_1__* vmstats_local; } ;
typedef  enum vm_event_item { ____Placeholder_vm_event_item } vm_event_item ;
struct TYPE_4__ {int /*<<< orphan*/ * events; } ;
struct TYPE_3__ {int /*<<< orphan*/ * events; } ;

/* Variables and functions */
 unsigned long MEMCG_CHARGE_BATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 struct mem_cgroup* FUNC5 (struct mem_cgroup*) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(struct mem_cgroup *memcg, enum vm_event_item idx,
			  unsigned long count)
{
	unsigned long x;

	if (FUNC4())
		return;

	x = count + FUNC1(memcg->vmstats_percpu->events[idx]);
	if (FUNC6(x > MEMCG_CHARGE_BATCH)) {
		struct mem_cgroup *mi;

		/*
		 * Batch local counters to keep them in sync with
		 * the hierarchical ones.
		 */
		FUNC0(memcg->vmstats_local->events[idx], x);
		for (mi = memcg; mi; mi = FUNC5(mi))
			FUNC3(x, &mi->vmevents[idx]);
		x = 0;
	}
	FUNC2(memcg->vmstats_percpu->events[idx], x);
}