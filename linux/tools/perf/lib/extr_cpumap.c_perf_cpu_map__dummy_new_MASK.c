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
struct perf_cpu_map {int nr; int* map; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 struct perf_cpu_map* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

struct perf_cpu_map *FUNC2(void)
{
	struct perf_cpu_map *cpus = FUNC0(sizeof(*cpus) + sizeof(int));

	if (cpus != NULL) {
		cpus->nr = 1;
		cpus->map[0] = -1;
		FUNC1(&cpus->refcnt, 1);
	}

	return cpus;
}