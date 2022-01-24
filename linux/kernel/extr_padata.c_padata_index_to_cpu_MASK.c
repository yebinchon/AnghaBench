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
struct TYPE_2__ {int /*<<< orphan*/  pcpu; } ;
struct parallel_data {TYPE_1__ cpumask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct parallel_data *pd, int cpu_index)
{
	int cpu, target_cpu;

	target_cpu = FUNC0(pd->cpumask.pcpu);
	for (cpu = 0; cpu < cpu_index; cpu++)
		target_cpu = FUNC1(target_cpu, pd->cpumask.pcpu);

	return target_cpu;
}