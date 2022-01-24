#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct perf_event_attr {int dummy; } ;
struct TYPE_4__ {int sample_type; int sample_period; } ;
struct TYPE_5__ {TYPE_1__ attr; } ;
struct evsel {char const* unit; int scale; TYPE_2__ core; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int PERF_SAMPLE_CPU ; 
 int PERF_SAMPLE_PERIOD ; 
 int PERF_SAMPLE_RAW ; 
 int PERF_SAMPLE_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct evsel*,struct perf_event_attr*,int) ; 
 scalar_t__ FUNC1 (struct evsel*) ; 
 scalar_t__ FUNC2 (struct evsel*) ; 
 TYPE_3__ perf_evsel__object ; 
 struct evsel* FUNC3 (int /*<<< orphan*/ ) ; 

struct evsel *FUNC4(struct perf_event_attr *attr, int idx)
{
	struct evsel *evsel = FUNC3(perf_evsel__object.size);

	if (!evsel)
		return NULL;
	FUNC0(evsel, attr, idx);

	if (FUNC1(evsel)) {
		evsel->core.attr.sample_type |= (PERF_SAMPLE_RAW | PERF_SAMPLE_TIME |
					    PERF_SAMPLE_CPU | PERF_SAMPLE_PERIOD),
		evsel->core.attr.sample_period = 1;
	}

	if (FUNC2(evsel)) {
		/*
		 * The evsel->unit points to static alias->unit
		 * so it's ok to use static string in here.
		 */
		static const char *unit = "msec";

		evsel->unit = unit;
		evsel->scale = 1e-6;
	}

	return evsel;
}