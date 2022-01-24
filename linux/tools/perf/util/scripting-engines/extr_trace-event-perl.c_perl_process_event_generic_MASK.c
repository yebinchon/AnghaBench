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
struct TYPE_4__ {int size; } ;
union perf_event {TYPE_2__ header; } ;
struct perf_sample {int raw_size; scalar_t__ raw_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  attr; } ;
struct evsel {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FREETMPS ; 
 int /*<<< orphan*/  G_SCALAR ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUTBACK ; 
 int /*<<< orphan*/  SAVETMPS ; 
 int /*<<< orphan*/  SP ; 
 int /*<<< orphan*/  SPAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dSP ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(union perf_event *event,
				       struct perf_sample *sample,
				       struct evsel *evsel)
{
	dSP;

	if (!FUNC3("process_event", 0))
		return;

	ENTER;
	SAVETMPS;
	FUNC0(SP);
	FUNC1(FUNC5(FUNC4((const char *)event, event->header.size)));
	FUNC1(FUNC5(FUNC4((const char *)&evsel->core.attr, sizeof(evsel->core.attr))));
	FUNC1(FUNC5(FUNC4((const char *)sample, sizeof(*sample))));
	FUNC1(FUNC5(FUNC4((const char *)sample->raw_data, sample->raw_size)));
	PUTBACK;
	FUNC2("process_event", G_SCALAR);
	SPAGAIN;
	PUTBACK;
	FREETMPS;
	LEAVE;
}