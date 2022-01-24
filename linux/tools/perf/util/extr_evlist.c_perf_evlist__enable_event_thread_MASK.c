#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fd; } ;
struct evsel {TYPE_2__ core; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpus; } ;
struct evlist {TYPE_1__ core; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct evsel*,int,int) ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct evlist *evlist,
					    struct evsel *evsel,
					    int thread)
{
	int cpu;
	int nr_cpus = FUNC2(evlist->core.cpus);

	if (!evsel->core.fd)
		return -EINVAL;

	for (cpu = 0; cpu < nr_cpus; cpu++) {
		int err = FUNC1(FUNC0(evsel, cpu, thread), PERF_EVENT_IOC_ENABLE, 0);
		if (err)
			return err;
	}
	return 0;
}