#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union perf_event {int dummy; } perf_event ;
struct TYPE_2__ {int /*<<< orphan*/  last; int /*<<< orphan*/  data; } ;
struct trace {TYPE_1__ oe; int /*<<< orphan*/  evlist; int /*<<< orphan*/  sort_events; } ;

/* Variables and functions */
 int FUNC0 (struct trace*,union perf_event*) ; 
 int FUNC1 (int /*<<< orphan*/ *,union perf_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,union perf_event*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct trace*) ; 

__attribute__((used)) static int FUNC4(struct trace *trace, union perf_event *event)
{
	int err;

	if (!trace->sort_events)
		return FUNC0(trace, event);

	err = FUNC2(trace->evlist, event, &trace->oe.last);
	if (err && err != -1)
		return err;

	err = FUNC1(&trace->oe.data, event, trace->oe.last, 0);
	if (err)
		return err;

	return FUNC3(trace);
}