#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * put_ids; } ;
struct TYPE_13__ {int max_cpu_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* core_even ; 
 TYPE_2__* core_odd ; 
 int /*<<< orphan*/ * cpu_affinity_set ; 
 scalar_t__ cpu_affinity_setsize ; 
 int /*<<< orphan*/ * cpu_present_set ; 
 scalar_t__ cpu_present_setsize ; 
 TYPE_2__* cpus ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* irq_column_2_cpu ; 
 TYPE_2__* irqs_per_cpu ; 
 int /*<<< orphan*/ * outp ; 
 TYPE_2__* output_buffer ; 
 TYPE_2__* package_even ; 
 TYPE_2__* package_odd ; 
 TYPE_2__* thread_even ; 
 TYPE_2__* thread_odd ; 
 TYPE_1__ topo ; 

void FUNC3(void)
{
	int i;

	FUNC0(cpu_present_set);
	cpu_present_set = NULL;
	cpu_present_setsize = 0;

	FUNC0(cpu_affinity_set);
	cpu_affinity_set = NULL;
	cpu_affinity_setsize = 0;

	FUNC1(thread_even);
	FUNC1(core_even);
	FUNC1(package_even);

	thread_even = NULL;
	core_even = NULL;
	package_even = NULL;

	FUNC1(thread_odd);
	FUNC1(core_odd);
	FUNC1(package_odd);

	thread_odd = NULL;
	core_odd = NULL;
	package_odd = NULL;

	FUNC1(output_buffer);
	output_buffer = NULL;
	outp = NULL;

	FUNC2();

	FUNC1(irq_column_2_cpu);
	FUNC1(irqs_per_cpu);

	for (i = 0; i <= topo.max_cpu_num; ++i) {
		if (cpus[i].put_ids)
			FUNC0(cpus[i].put_ids);
	}
	FUNC1(cpus);
}