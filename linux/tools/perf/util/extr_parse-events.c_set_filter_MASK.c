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
struct perf_pmu {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;

/* Variables and functions */
 scalar_t__ PERF_TYPE_TRACEPOINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct evsel*,char const*) ; 
 scalar_t__ FUNC2 (struct evsel*,char const*) ; 
 struct perf_pmu* FUNC3 (struct perf_pmu*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_pmu*,char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(struct evsel *evsel, const void *arg)
{
	const char *str = arg;
	bool found = false;
	int nr_addr_filters = 0;
	struct perf_pmu *pmu = NULL;

	if (evsel == NULL) {
		FUNC0(stderr,
			"--filter option should follow a -e tracepoint or HW tracer option\n");
		return -1;
	}

	if (evsel->core.attr.type == PERF_TYPE_TRACEPOINT) {
		if (FUNC2(evsel, str) < 0) {
			FUNC0(stderr,
				"not enough memory to hold filter string\n");
			return -1;
		}

		return 0;
	}

	while ((pmu = FUNC3(pmu)) != NULL)
		if (pmu->type == evsel->core.attr.type) {
			found = true;
			break;
		}

	if (found)
		FUNC4(pmu, "nr_addr_filters",
				    "%d", &nr_addr_filters);

	if (!nr_addr_filters) {
		FUNC0(stderr,
			"This CPU does not support address filtering\n");
		return -1;
	}

	if (FUNC1(evsel, str) < 0) {
		FUNC0(stderr,
			"not enough memory to hold filter string\n");
		return -1;
	}

	return 0;
}