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
struct perf_cpu_map {scalar_t__ nr; } ;

/* Variables and functions */
 int FUNC0 (struct perf_cpu_map*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_cpu_map*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(struct perf_cpu_map *cpumap)
{
	char *cpumask;
	size_t mask_size;
	int ret;
	int last_cpu;

	last_cpu = FUNC0(cpumap, cpumap->nr - 1);
	mask_size = last_cpu / 4 + 2; /* one more byte for EOS */
	mask_size += last_cpu / 32; /* ',' is needed for every 32th cpus */

	cpumask = FUNC3(mask_size);
	if (cpumask == NULL) {
		FUNC4("failed to allocate cpu mask\n");
		return -1;
	}

	FUNC1(cpumap, cpumask, mask_size);

	ret = FUNC5("tracing_cpumask", cpumask);

	FUNC2(cpumask);
	return ret;
}