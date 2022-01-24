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
struct trace_array_cpu {int /*<<< orphan*/  disabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct trace_array {TYPE_1__ trace_buffer; } ;
struct ftrace_graph_ent {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_GRAPH_NOTRACE_BIT ; 
 int FUNC0 (struct trace_array*,struct ftrace_graph_ent*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ftrace_graph_ent*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_array*) ; 
 struct trace_array* graph_array ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 struct trace_array_cpu* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ tracing_thresh ; 

int FUNC15(struct ftrace_graph_ent *trace)
{
	struct trace_array *tr = graph_array;
	struct trace_array_cpu *data;
	unsigned long flags;
	long disabled;
	int ret;
	int cpu;
	int pc;

	if (FUNC14(TRACE_GRAPH_NOTRACE_BIT))
		return 0;

	/*
	 * Do not trace a function if it's filtered by set_graph_notrace.
	 * Make the index of ret stack negative to indicate that it should
	 * ignore further functions.  But it needs its own ret stack entry
	 * to recover the original index in order to continue tracing after
	 * returning from the function.
	 */
	if (FUNC5(trace->func)) {
		FUNC13(TRACE_GRAPH_NOTRACE_BIT);
		/*
		 * Need to return 1 to have the return called
		 * that will clear the NOTRACE bit.
		 */
		return 1;
	}

	if (!FUNC6(tr))
		return 0;

	if (FUNC3(trace))
		return 0;

	if (FUNC4())
		return 0;

	/*
	 * Stop here if tracing_threshold is set. We only write function return
	 * events to the ring buffer.
	 */
	if (tracing_thresh)
		return 1;

	FUNC9(flags);
	cpu = FUNC12();
	data = FUNC10(tr->trace_buffer.data, cpu);
	disabled = FUNC2(&data->disabled);
	if (FUNC7(disabled == 1)) {
		pc = FUNC11();
		ret = FUNC0(tr, trace, flags, pc);
	} else {
		ret = 0;
	}

	FUNC1(&data->disabled);
	FUNC8(flags);

	return ret;
}