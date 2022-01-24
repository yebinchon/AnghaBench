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
struct perf_evsel {int dummy; } ;
struct perf_event_attr {int disabled; int /*<<< orphan*/  config; int /*<<< orphan*/  type; } ;
struct perf_counts_values {scalar_t__ val; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_COUNT_SW_TASK_CLOCK ; 
 int /*<<< orphan*/  PERF_TYPE_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_evsel*) ; 
 int FUNC3 (struct perf_evsel*) ; 
 int FUNC4 (struct perf_evsel*) ; 
 struct perf_evsel* FUNC5 (struct perf_event_attr*) ; 
 int FUNC6 (struct perf_evsel*,int /*<<< orphan*/ *,struct perf_thread_map*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_evsel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct perf_counts_values*) ; 
 struct perf_thread_map* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct perf_thread_map*) ; 
 int /*<<< orphan*/  FUNC10 (struct perf_thread_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(void)
{
	struct perf_counts_values counts = { .val = 0 };
	struct perf_thread_map *threads;
	struct perf_evsel *evsel;
	struct perf_event_attr attr = {
		.type	  = PERF_TYPE_SOFTWARE,
		.config	  = PERF_COUNT_SW_TASK_CLOCK,
		.disabled = 1,
	};
	int err;

	threads = FUNC8();
	FUNC0("failed to create threads", threads);

	FUNC10(threads, 0, 0);

	evsel = FUNC5(&attr);
	FUNC0("failed to create evsel", evsel);

	err = FUNC6(evsel, NULL, threads);
	FUNC0("failed to open evsel", err == 0);

	FUNC7(evsel, 0, 0, &counts);
	FUNC0("failed to read value for evsel", counts.val == 0);

	err = FUNC4(evsel);
	FUNC0("failed to enable evsel", err == 0);

	FUNC7(evsel, 0, 0, &counts);
	FUNC0("failed to read value for evsel", counts.val != 0);

	err = FUNC3(evsel);
	FUNC0("failed to enable evsel", err == 0);

	FUNC1(evsel);
	FUNC2(evsel);

	FUNC9(threads);
	return 0;
}