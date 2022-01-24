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
struct perf_thread_map {int dummy; } ;
struct evsel {int dummy; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int TEST_FAIL ; 
 int TEST_OK ; 
 int /*<<< orphan*/  UINT_MAX ; 
 struct evsel* FUNC0 (struct evlist*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct evsel*,struct perf_thread_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_thread_map*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct perf_thread_map* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct evlist *evlist)
{
	struct evsel *evsel = FUNC0(evlist);
	struct perf_thread_map *threads;
	int err;

	FUNC4("attaching to current thread as enabled\n");

	threads = FUNC5(-1, FUNC1(), UINT_MAX);
	if (threads == NULL) {
		FUNC4("failed to call thread_map__new\n");
		return -1;
	}

	err = FUNC2(evsel, threads);

	FUNC3(threads);
	return err == 0 ? TEST_OK : TEST_FAIL;
}