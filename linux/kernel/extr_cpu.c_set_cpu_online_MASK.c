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
 int /*<<< orphan*/  __cpu_online_mask ; 
 int /*<<< orphan*/  __num_online_cpus ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 

void FUNC4(unsigned int cpu, bool online)
{
	/*
	 * atomic_inc/dec() is required to handle the horrid abuse of this
	 * function by the reboot and kexec code which invoke it from
	 * IPI/NMI broadcasts when shutting down CPUs. Invocation from
	 * regular CPU hotplug is properly serialized.
	 *
	 * Note, that the fact that __num_online_cpus is of type atomic_t
	 * does not protect readers which are not serialized against
	 * concurrent hotplug operations.
	 */
	if (online) {
		if (!FUNC3(cpu, &__cpu_online_mask))
			FUNC1(&__num_online_cpus);
	} else {
		if (FUNC2(cpu, &__cpu_online_mask))
			FUNC0(&__num_online_cpus);
	}
}