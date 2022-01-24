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
struct perf_event_attr {int exclude_kernel; scalar_t__ precise_ip; int /*<<< orphan*/  config; int /*<<< orphan*/  type; } ;
struct evsel {int precise_max; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_COUNT_HW_CPU_CYCLES ; 
 int /*<<< orphan*/  PERF_TYPE_HARDWARE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*,char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct evsel*) ; 
 struct evsel* FUNC3 (struct perf_event_attr*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

struct evsel *FUNC5(bool precise)
{
	struct perf_event_attr attr = {
		.type	= PERF_TYPE_HARDWARE,
		.config	= PERF_COUNT_HW_CPU_CYCLES,
		.exclude_kernel	= !FUNC4(),
	};
	struct evsel *evsel;

	FUNC1(&attr);

	if (!precise)
		goto new_event;

	/*
	 * Now let the usual logic to set up the perf_event_attr defaults
	 * to kick in when we return and before perf_evsel__open() is called.
	 */
new_event:
	evsel = FUNC3(&attr);
	if (evsel == NULL)
		goto out;

	evsel->precise_max = true;

	/* use asprintf() because free(evsel) assumes name is allocated */
	if (FUNC0(&evsel->name, "cycles%s%s%.*s",
		     (attr.precise_ip || attr.exclude_kernel) ? ":" : "",
		     attr.exclude_kernel ? "u" : "",
		     attr.precise_ip ? attr.precise_ip + 1 : 0, "ppp") < 0)
		goto error_free;
out:
	return evsel;
error_free:
	FUNC2(evsel);
	evsel = NULL;
	goto out;
}