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
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_CONF ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 unsigned long long FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char**,size_t*) ; 

int FUNC7(void)
{
	static bool cached;
	static int cached_result;
	int cpu;
	int ncpu;

	if (cached)
		return cached_result;

	ncpu = FUNC5(_SC_NPROCESSORS_CONF);
	for (cpu = 0; cpu < ncpu; cpu++) {
		unsigned long long siblings;
		char *str;
		size_t strlen;
		char fn[256];

		FUNC3(fn, sizeof fn,
			"devices/system/cpu/cpu%d/topology/core_cpus", cpu);
		if (FUNC0(fn, F_OK) == -1) {
			FUNC3(fn, sizeof fn,
				"devices/system/cpu/cpu%d/topology/thread_siblings",
				cpu);
		}
		if (FUNC6(fn, &str, &strlen) < 0)
			continue;
		/* Entry is hex, but does not have 0x, so need custom parser */
		siblings = FUNC4(str, NULL, 16);
		FUNC1(str);
		if (FUNC2(siblings) > 1) {
			cached_result = 1;
			cached = true;
			break;
		}
	}
	if (!cached) {
		cached_result = 0;
		cached = true;
	}
	return cached_result;
}