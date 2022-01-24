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
struct trace_event_call {int dummy; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct perf_event*) ; 
 int FUNC1 (struct trace_event_call*,struct perf_event*) ; 
 int FUNC2 (struct trace_event_call*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 

__attribute__((used)) static int FUNC4(struct trace_event_call *tp_event,
				 struct perf_event *p_event)
{
	int ret;

	ret = FUNC1(tp_event, p_event);
	if (ret)
		return ret;

	ret = FUNC2(tp_event, p_event);
	if (ret)
		return ret;

	ret = FUNC0(p_event);
	if (ret) {
		FUNC3(p_event);
		return ret;
	}

	return 0;
}