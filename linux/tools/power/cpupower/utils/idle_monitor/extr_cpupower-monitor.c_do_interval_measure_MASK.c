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
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) () ;int /*<<< orphan*/  (* start ) () ;int /*<<< orphan*/  hw_states_num; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int avail_monitors ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int cpu_count ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__** monitors ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ wake_cpus ; 

int FUNC5(int i)
{
	unsigned int num;
	int cpu;

	if (wake_cpus)
		for (cpu = 0; cpu < cpu_count; cpu++)
			FUNC0(cpu);

	for (num = 0; num < avail_monitors; num++) {
		FUNC1("HW C-state residency monitor: %s - States: %d\n",
		       monitors[num]->name, monitors[num]->hw_states_num);
		monitors[num]->start();
	}

	FUNC2(i);

	if (wake_cpus)
		for (cpu = 0; cpu < cpu_count; cpu++)
			FUNC0(cpu);

	for (num = 0; num < avail_monitors; num++)
		monitors[num]->stop();


	return 0;
}