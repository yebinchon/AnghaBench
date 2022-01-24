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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  target_cpumask ; 
 int /*<<< orphan*/  target_cpumask_size ; 
 int topo_max_cpus ; 

__attribute__((used)) static void FUNC2(
	void (*callback)(int, void *, void *, void *, void *), void *arg1,
	void *arg2, void *arg3, void *arg4)
{
	int i;

	for (i = 0; i < topo_max_cpus; ++i) {
		int online;

		if (!FUNC0(i, target_cpumask_size, target_cpumask))
			continue;
		if (i)
			online = FUNC1(
				1, "/sys/devices/system/cpu/cpu%d/online", i);
		else
			online =
				1; /* online entry for CPU 0 needs some special configs */

		if (online && callback)
			callback(i, arg1, arg2, arg3, arg4);
	}
}