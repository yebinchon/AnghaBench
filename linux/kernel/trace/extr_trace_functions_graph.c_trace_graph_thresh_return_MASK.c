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
struct ftrace_graph_ret {scalar_t__ rettime; scalar_t__ calltime; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_GRAPH_NOTRACE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct ftrace_graph_ret*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftrace_graph_ret*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ tracing_thresh ; 

__attribute__((used)) static void FUNC4(struct ftrace_graph_ret *trace)
{
	FUNC0(trace);

	if (FUNC3(TRACE_GRAPH_NOTRACE_BIT)) {
		FUNC2(TRACE_GRAPH_NOTRACE_BIT);
		return;
	}

	if (tracing_thresh &&
	    (trace->rettime - trace->calltime < tracing_thresh))
		return;
	else
		FUNC1(trace);
}