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
struct perf_thread_map {int dummy; } ;
struct TYPE_3__ {int disabled; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int TEST_FAIL ; 
 int TEST_OK ; 
 int /*<<< orphan*/  UINT_MAX ; 
 struct evsel* FUNC0 (struct evlist*) ; 
 scalar_t__ FUNC1 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct evsel*,struct perf_thread_map*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_thread_map*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct perf_thread_map* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct evlist *evlist)
{
	struct evsel *evsel = FUNC0(evlist);
	struct perf_thread_map *threads;
	int err;

	FUNC5("attaching to current thread as disabled\n");

	threads = FUNC6(-1, FUNC2(), UINT_MAX);
	if (threads == NULL) {
		FUNC5("thread_map__new\n");
		return -1;
	}

	evsel->core.attr.disabled = 1;

	err = FUNC3(evsel, threads);
	if (err) {
		FUNC5("Failed to open event cpu-clock:u\n");
		return err;
	}

	FUNC4(threads);
	return FUNC1(evsel) == 0 ? TEST_OK : TEST_FAIL;
}