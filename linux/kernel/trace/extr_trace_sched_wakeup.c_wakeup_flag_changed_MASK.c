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
typedef  int u32 ;
struct tracer {int dummy; } ;
struct trace_array {struct tracer* current_trace; } ;

/* Variables and functions */
 int TRACE_ITER_DISPLAY_GRAPH ; 
 int FUNC0 (struct tracer*,int,int) ; 
 int FUNC1 (struct trace_array*,int) ; 
 scalar_t__ FUNC2 (struct trace_array*,int,int) ; 

__attribute__((used)) static int FUNC3(struct trace_array *tr, u32 mask, int set)
{
	struct tracer *tracer = tr->current_trace;

	if (FUNC2(tr, mask, set))
		return 0;

#ifdef CONFIG_FUNCTION_GRAPH_TRACER
	if (mask & TRACE_ITER_DISPLAY_GRAPH)
		return wakeup_display_graph(tr, set);
#endif

	return FUNC0(tracer, mask, set);
}