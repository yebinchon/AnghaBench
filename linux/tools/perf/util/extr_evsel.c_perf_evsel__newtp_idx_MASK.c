#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct perf_event_attr {int sample_type; int sample_period; int /*<<< orphan*/  config; int /*<<< orphan*/  type; } ;
struct evsel {int /*<<< orphan*/  name; TYPE_1__* tp_format; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct evsel* FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int PERF_SAMPLE_CPU ; 
 int PERF_SAMPLE_PERIOD ; 
 int PERF_SAMPLE_RAW ; 
 int PERF_SAMPLE_TIME ; 
 int /*<<< orphan*/  PERF_TYPE_TRACEPOINT ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event_attr*) ; 
 int /*<<< orphan*/  FUNC5 (struct evsel*,struct perf_event_attr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct evsel*) ; 
 TYPE_2__ perf_evsel__object ; 
 TYPE_1__* FUNC7 (char const*,char const*) ; 
 struct evsel* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct evsel *FUNC10(const char *sys, const char *name, int idx)
{
	struct evsel *evsel = FUNC8(perf_evsel__object.size);
	int err = -ENOMEM;

	if (evsel == NULL) {
		goto out_err;
	} else {
		struct perf_event_attr attr = {
			.type	       = PERF_TYPE_TRACEPOINT,
			.sample_type   = (PERF_SAMPLE_RAW | PERF_SAMPLE_TIME |
					  PERF_SAMPLE_CPU | PERF_SAMPLE_PERIOD),
		};

		if (FUNC3(&evsel->name, "%s:%s", sys, name) < 0)
			goto out_free;

		evsel->tp_format = FUNC7(sys, name);
		if (FUNC1(evsel->tp_format)) {
			err = FUNC2(evsel->tp_format);
			goto out_free;
		}

		FUNC4(&attr);
		attr.config = evsel->tp_format->id;
		attr.sample_period = 1;
		FUNC5(evsel, &attr, idx);
	}

	return evsel;

out_free:
	FUNC9(&evsel->name);
	FUNC6(evsel);
out_err:
	return FUNC0(err);
}