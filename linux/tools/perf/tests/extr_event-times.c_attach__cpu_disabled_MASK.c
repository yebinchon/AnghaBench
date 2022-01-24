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
struct perf_cpu_map {int dummy; } ;
struct TYPE_3__ {int disabled; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int TEST_SKIP ; 
 struct evsel* FUNC0 (struct evlist*) ; 
 int FUNC1 (struct evsel*) ; 
 struct perf_cpu_map* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_cpu_map*) ; 
 int FUNC4 (struct evsel*,struct perf_cpu_map*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct evlist *evlist)
{
	struct evsel *evsel = FUNC0(evlist);
	struct perf_cpu_map *cpus;
	int err;

	FUNC5("attaching to CPU 0 as enabled\n");

	cpus = FUNC2("0");
	if (cpus == NULL) {
		FUNC5("failed to call perf_cpu_map__new\n");
		return -1;
	}

	evsel->core.attr.disabled = 1;

	err = FUNC4(evsel, cpus);
	if (err) {
		if (err == -EACCES)
			return TEST_SKIP;

		FUNC5("Failed to open event cpu-clock:u\n");
		return err;
	}

	FUNC3(cpus);
	return FUNC1(evsel);
}