#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  nr_cpus_online; } ;
struct TYPE_6__ {TYPE_1__ env; } ;
struct perf_session {TYPE_2__ header; } ;
struct perf_cpu_map {int nr; int* map; } ;
struct TYPE_7__ {int sample_type; } ;
struct TYPE_8__ {TYPE_3__ attr; } ;
struct evsel {TYPE_4__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_NR_CPUS ; 
 int PERF_SAMPLE_CPU ; 
 int PERF_TYPE_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct perf_cpu_map* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_cpu_map*) ; 
 struct evsel* FUNC3 (struct perf_session*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned long*) ; 

int FUNC6(struct perf_session *session,
			     const char *cpu_list, unsigned long *cpu_bitmap)
{
	int i, err = -1;
	struct perf_cpu_map *map;
	int nr_cpus = FUNC0(session->header.env.nr_cpus_online, MAX_NR_CPUS);

	for (i = 0; i < PERF_TYPE_MAX; ++i) {
		struct evsel *evsel;

		evsel = FUNC3(session, i);
		if (!evsel)
			continue;

		if (!(evsel->core.attr.sample_type & PERF_SAMPLE_CPU)) {
			FUNC4("File does not contain CPU events. "
			       "Remove -C option to proceed.\n");
			return -1;
		}
	}

	map = FUNC1(cpu_list);
	if (map == NULL) {
		FUNC4("Invalid cpu_list\n");
		return -1;
	}

	for (i = 0; i < map->nr; i++) {
		int cpu = map->map[i];

		if (cpu >= nr_cpus) {
			FUNC4("Requested CPU %d too large. "
			       "Consider raising MAX_NR_CPUS\n", cpu);
			goto out_delete_map;
		}

		FUNC5(cpu, cpu_bitmap);
	}

	err = 0;

out_delete_map:
	FUNC2(map);
	return err;
}