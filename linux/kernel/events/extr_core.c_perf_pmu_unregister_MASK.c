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
struct pmu {scalar_t__ type; int /*<<< orphan*/  dev; scalar_t__ nr_addr_filters; int /*<<< orphan*/  pmu_disable_count; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 scalar_t__ PERF_TYPE_MAX ; 
 int /*<<< orphan*/  dev_attr_nr_addr_filters ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pmu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ pmu_bus_running ; 
 int /*<<< orphan*/  pmu_idr ; 
 int /*<<< orphan*/  pmus_lock ; 
 int /*<<< orphan*/  pmus_srcu ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct pmu *pmu)
{
	FUNC6(&pmus_lock);
	FUNC5(&pmu->entry);

	/*
	 * We dereference the pmu list under both SRCU and regular RCU, so
	 * synchronize against both of those.
	 */
	FUNC10(&pmus_srcu);
	FUNC9();

	FUNC2(pmu->pmu_disable_count);
	if (pmu->type >= PERF_TYPE_MAX)
		FUNC4(&pmu_idr, pmu->type);
	if (pmu_bus_running) {
		if (pmu->nr_addr_filters)
			FUNC1(pmu->dev, &dev_attr_nr_addr_filters);
		FUNC0(pmu->dev);
		FUNC8(pmu->dev);
	}
	FUNC3(pmu);
	FUNC7(&pmus_lock);
}