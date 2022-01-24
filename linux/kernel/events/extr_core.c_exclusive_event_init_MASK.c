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
struct pmu {int /*<<< orphan*/  exclusive_cnt; } ;
struct perf_event {int attach_state; struct pmu* pmu; } ;

/* Variables and functions */
 int EBUSY ; 
 int PERF_ATTACH_TASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pmu*) ; 

__attribute__((used)) static int FUNC3(struct perf_event *event)
{
	struct pmu *pmu = event->pmu;

	if (!FUNC2(pmu))
		return 0;

	/*
	 * Prevent co-existence of per-task and cpu-wide events on the
	 * same exclusive pmu.
	 *
	 * Negative pmu::exclusive_cnt means there are cpu-wide
	 * events on this "exclusive" pmu, positive means there are
	 * per-task events.
	 *
	 * Since this is called in perf_event_alloc() path, event::ctx
	 * doesn't exist yet; it is, however, safe to use PERF_ATTACH_TASK
	 * to mean "per-task event", because unlike other attach states it
	 * never gets cleared.
	 */
	if (event->attach_state & PERF_ATTACH_TASK) {
		if (!FUNC1(&pmu->exclusive_cnt))
			return -EBUSY;
	} else {
		if (!FUNC0(&pmu->exclusive_cnt))
			return -EBUSY;
	}

	return 0;
}