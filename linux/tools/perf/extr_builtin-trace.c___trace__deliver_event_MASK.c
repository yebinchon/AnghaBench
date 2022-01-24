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
typedef  union perf_event {int dummy; } perf_event ;
struct trace {int /*<<< orphan*/  output; struct evlist* evlist; } ;
struct perf_sample {int dummy; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct evlist*,union perf_event*,struct perf_sample*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace*,union perf_event*,struct perf_sample*) ; 

__attribute__((used)) static int FUNC3(struct trace *trace, union perf_event *event)
{
	struct evlist *evlist = trace->evlist;
	struct perf_sample sample;
	int err;

	err = FUNC1(evlist, event, &sample);
	if (err)
		FUNC0(trace->output, "Can't parse sample, err = %d, skipping...\n", err);
	else
		FUNC2(trace, event, &sample);

	return 0;
}