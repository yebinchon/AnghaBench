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
struct trace_seq {int dummy; } ;
struct trace_iterator {int cpu; struct trace_array* tr; struct fgraph_data* private; } ;
struct trace_array {int dummy; } ;
struct ftrace_graph_ent {size_t depth; scalar_t__ func; } ;
struct ftrace_graph_ent_entry {struct ftrace_graph_ent graph_ent; } ;
struct fgraph_data {int /*<<< orphan*/  cpu_data; } ;
struct fgraph_cpu_data {size_t depth; scalar_t__* enter_funcs; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int FLAGS_FILL_FULL ; 
 size_t FTRACE_RETFUNC_DEPTH ; 
 int TRACE_GRAPH_INDENT ; 
 int TRACE_TYPE_NO_CONSUME ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct fgraph_cpu_data* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_array*,int /*<<< orphan*/ ,struct trace_seq*,int) ; 
 scalar_t__ FUNC3 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*,char) ; 

__attribute__((used)) static enum print_line_t
FUNC6(struct trace_iterator *iter,
			 struct ftrace_graph_ent_entry *entry,
			 struct trace_seq *s, int cpu, u32 flags)
{
	struct ftrace_graph_ent *call = &entry->graph_ent;
	struct fgraph_data *data = iter->private;
	struct trace_array *tr = iter->tr;
	int i;

	if (data) {
		struct fgraph_cpu_data *cpu_data;
		int cpu = iter->cpu;

		cpu_data = FUNC1(data->cpu_data, cpu);
		cpu_data->depth = call->depth;

		/* Save this function pointer to see if the exit matches */
		if (call->depth < FTRACE_RETFUNC_DEPTH &&
		    !FUNC0(call->depth < 0))
			cpu_data->enter_funcs[call->depth] = call->func;
	}

	/* No time */
	FUNC2(tr, 0, s, flags | FLAGS_FILL_FULL);

	/* Function */
	for (i = 0; i < call->depth * TRACE_GRAPH_INDENT; i++)
		FUNC5(s, ' ');

	FUNC4(s, "%ps() {\n", (void *)call->func);

	if (FUNC3(s))
		return TRACE_TYPE_PARTIAL_LINE;

	/*
	 * we already consumed the current entry to check the next one
	 * and see if this is a leaf.
	 */
	return TRACE_TYPE_NO_CONSUME;
}