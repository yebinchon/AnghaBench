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
 int PERF_ATTACH_TASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pmu*) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event)
{
	struct pmu *pmu = event->pmu;

	if (!FUNC2(pmu))
		return;

	/* see comment in exclusive_event_init() */
	if (event->attach_state & PERF_ATTACH_TASK)
		FUNC0(&pmu->exclusive_cnt);
	else
		FUNC1(&pmu->exclusive_cnt);
}