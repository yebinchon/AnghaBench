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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  wq_debug_force_rr_cpu ; 
 int /*<<< orphan*/  wq_rr_cpu_last ; 
 int /*<<< orphan*/  wq_unbound_cpumask ; 

__attribute__((used)) static int FUNC9(int cpu)
{
	static bool printed_dbg_warning;
	int new_cpu;

	if (FUNC6(!wq_debug_force_rr_cpu)) {
		if (FUNC5(cpu, wq_unbound_cpumask))
			return cpu;
	} else if (!printed_dbg_warning) {
		FUNC7("workqueue: round-robin CPU selection forced, expect performance impact\n");
		printed_dbg_warning = true;
	}

	if (FUNC2(wq_unbound_cpumask))
		return cpu;

	new_cpu = FUNC0(wq_rr_cpu_last);
	new_cpu = FUNC4(new_cpu, wq_unbound_cpumask, cpu_online_mask);
	if (FUNC8(new_cpu >= nr_cpu_ids)) {
		new_cpu = FUNC3(wq_unbound_cpumask, cpu_online_mask);
		if (FUNC8(new_cpu >= nr_cpu_ids))
			return cpu;
	}
	FUNC1(wq_rr_cpu_last, new_cpu);

	return new_cpu;
}