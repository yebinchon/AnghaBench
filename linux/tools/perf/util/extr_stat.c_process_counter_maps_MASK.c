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
struct perf_stat_config {int dummy; } ;
struct TYPE_2__ {scalar_t__ system_wide; int /*<<< orphan*/  threads; } ;
struct evsel {int /*<<< orphan*/  counts; TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct evsel*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct perf_stat_config*,struct evsel*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct perf_stat_config *config,
				struct evsel *counter)
{
	int nthreads = FUNC2(counter->core.threads);
	int ncpus = FUNC1(counter);
	int cpu, thread;

	if (counter->core.system_wide)
		nthreads = 1;

	for (thread = 0; thread < nthreads; thread++) {
		for (cpu = 0; cpu < ncpus; cpu++) {
			if (FUNC3(config, counter, cpu, thread,
						   FUNC0(counter->counts, cpu, thread)))
				return -1;
		}
	}

	return 0;
}