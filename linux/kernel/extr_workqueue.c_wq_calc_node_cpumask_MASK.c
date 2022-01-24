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
struct workqueue_attrs {int /*<<< orphan*/  cpumask; scalar_t__ no_numa; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  wq_numa_enabled ; 
 int /*<<< orphan*/ * wq_numa_possible_cpumask ; 

__attribute__((used)) static bool FUNC7(const struct workqueue_attrs *attrs, int node,
				 int cpu_going_down, cpumask_t *cpumask)
{
	if (!wq_numa_enabled || attrs->no_numa)
		goto use_dfl;

	/* does @node have any online CPUs @attrs wants? */
	FUNC0(cpumask, FUNC5(node), attrs->cpumask);
	if (cpu_going_down >= 0)
		FUNC1(cpu_going_down, cpumask);

	if (FUNC3(cpumask))
		goto use_dfl;

	/* yeap, return possible CPUs in @node that @attrs wants */
	FUNC0(cpumask, attrs->cpumask, wq_numa_possible_cpumask[node]);

	if (FUNC3(cpumask)) {
		FUNC6("WARNING: workqueue cpumask: online intersect > "
				"possible intersect\n");
		return false;
	}

	return !FUNC4(cpumask, attrs->cpumask);

use_dfl:
	FUNC2(cpumask, attrs->cpumask);
	return false;
}