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
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;
struct evsel {TYPE_1__ core; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct evsel*,int,int) ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct evlist*,struct evsel*) ; 

__attribute__((used)) static int FUNC3(struct evlist *evlist,
					 struct evsel *evsel, int cpu)
{
	int thread;
	int nr_threads = FUNC2(evlist, evsel);

	if (!evsel->core.fd)
		return -EINVAL;

	for (thread = 0; thread < nr_threads; thread++) {
		int err = FUNC1(FUNC0(evsel, cpu, thread), PERF_EVENT_IOC_ENABLE, 0);
		if (err)
			return err;
	}
	return 0;
}