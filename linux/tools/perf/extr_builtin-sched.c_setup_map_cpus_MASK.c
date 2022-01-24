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
struct TYPE_2__ {struct perf_cpu_map* cpus; int /*<<< orphan*/  cpus_str; int /*<<< orphan*/  comp_cpus; scalar_t__ comp; } ;
struct perf_sched {int max_cpu; TYPE_1__ map; } ;
struct perf_cpu_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NPROCESSORS_CONF ; 
 struct perf_cpu_map* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct perf_sched *sched)
{
	struct perf_cpu_map *map;

	sched->max_cpu  = FUNC2(_SC_NPROCESSORS_CONF);

	if (sched->map.comp) {
		sched->map.comp_cpus = FUNC3(sched->max_cpu * sizeof(int));
		if (!sched->map.comp_cpus)
			return -1;
	}

	if (!sched->map.cpus_str)
		return 0;

	map = FUNC0(sched->map.cpus_str);
	if (!map) {
		FUNC1("failed to get cpus map from %s\n", sched->map.cpus_str);
		return -1;
	}

	sched->map.cpus = map;
	return 0;
}