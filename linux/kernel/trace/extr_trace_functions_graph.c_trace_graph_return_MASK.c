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
struct ftrace_graph_ret {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_GRAPH_NOTRACE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct trace_array*,struct ftrace_graph_ret*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ftrace_graph_ret*) ; 
 struct trace_array* graph_array ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 struct trace_array_cpu* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(struct ftrace_graph_ret *trace)
{
	struct trace_array *tr = graph_array;
	struct trace_array_cpu *data;
	unsigned long flags;
	long disabled;
	int cpu;
	int pc;

	FUNC3(trace);

	if (FUNC11(TRACE_GRAPH_NOTRACE_BIT)) {
		FUNC10(TRACE_GRAPH_NOTRACE_BIT);
		return;
	}

	FUNC6(flags);
	cpu = FUNC9();
	data = FUNC7(tr->trace_buffer.data, cpu);
	disabled = FUNC2(&data->disabled);
	if (FUNC4(disabled == 1)) {
		pc = FUNC8();
		FUNC0(tr, trace, flags, pc);
	}
	FUNC1(&data->disabled);
	FUNC5(flags);
}