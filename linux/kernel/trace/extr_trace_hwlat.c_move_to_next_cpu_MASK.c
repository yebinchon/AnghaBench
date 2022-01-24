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
struct cpumask {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpus_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (struct cpumask*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpumask*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cpumask*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct cpumask*) ; 
 TYPE_1__* current ; 
 int disable_migrate ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct cpumask save_cpumask ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  tracing_buffer_mask ; 

__attribute__((used)) static void FUNC10(void)
{
	struct cpumask *current_mask = &save_cpumask;
	int next_cpu;

	if (disable_migrate)
		return;
	/*
	 * If for some reason the user modifies the CPU affinity
	 * of this thread, than stop migrating for the duration
	 * of the current test.
	 */
	if (!FUNC2(current_mask, current->cpus_ptr))
		goto disable;

	FUNC6();
	FUNC0(current_mask, cpu_online_mask, tracing_buffer_mask);
	next_cpu = FUNC4(FUNC9(), current_mask);
	FUNC7();

	if (next_cpu >= nr_cpu_ids)
		next_cpu = FUNC3(current_mask);

	if (next_cpu >= nr_cpu_ids) /* Shouldn't happen! */
		goto disable;

	FUNC1(current_mask);
	FUNC5(next_cpu, current_mask);

	FUNC8(0, current_mask);
	return;

 disable:
	disable_migrate = true;
}