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
struct perf_cpu_map {int dummy; } ;
struct evsel {int dummy; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int TEST_FAIL ; 
 int TEST_OK ; 
 int TEST_SKIP ; 
 struct evsel* FUNC0 (struct evlist*) ; 
 struct perf_cpu_map* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_cpu_map*) ; 
 int FUNC3 (struct evsel*,struct perf_cpu_map*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct evlist *evlist)
{
	struct evsel *evsel = FUNC0(evlist);
	struct perf_cpu_map *cpus;
	int err;

	FUNC4("attaching to CPU 0 as enabled\n");

	cpus = FUNC1("0");
	if (cpus == NULL) {
		FUNC4("failed to call perf_cpu_map__new\n");
		return -1;
	}

	err = FUNC3(evsel, cpus);
	if (err == -EACCES)
		return TEST_SKIP;

	FUNC2(cpus);
	return err ? TEST_FAIL : TEST_OK;
}