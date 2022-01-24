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
typedef  int /*<<< orphan*/  u32 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int cpu; struct trace_seq seq; struct trace_entry* ent; struct fgraph_data* private; } ;
struct trace_entry {int type; } ;
struct ftrace_graph_ret_entry {int /*<<< orphan*/  ret; } ;
struct ftrace_graph_ent_entry {int /*<<< orphan*/  ret; } ;
struct fgraph_data {int cpu; int /*<<< orphan*/  cpu_data; struct ftrace_graph_ret_entry ent; scalar_t__ failed; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_2__ {int ignore; } ;

/* Variables and functions */
#define  TRACE_FN 131 
#define  TRACE_GRAPH_ENT 130 
#define  TRACE_GRAPH_RET 129 
#define  TRACE_STACK 128 
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_NO_CONSUME ; 
 int TRACE_TYPE_UNHANDLED ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct trace_seq*,struct trace_entry*,struct trace_iterator*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ftrace_graph_ret_entry*,struct trace_seq*,struct trace_iterator*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct trace_seq*,struct trace_entry*,struct trace_iterator*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ftrace_graph_ret_entry*,struct trace_entry*) ; 

enum print_line_t
FUNC5(struct trace_iterator *iter, u32 flags)
{
	struct ftrace_graph_ent_entry *field;
	struct fgraph_data *data = iter->private;
	struct trace_entry *entry = iter->ent;
	struct trace_seq *s = &iter->seq;
	int cpu = iter->cpu;
	int ret;

	if (data && FUNC0(data->cpu_data, cpu)->ignore) {
		FUNC0(data->cpu_data, cpu)->ignore = 0;
		return TRACE_TYPE_HANDLED;
	}

	/*
	 * If the last output failed, there's a possibility we need
	 * to print out the missing entry which would never go out.
	 */
	if (data && data->failed) {
		field = &data->ent;
		iter->cpu = data->cpu;
		ret = FUNC2(field, s, iter, flags);
		if (ret == TRACE_TYPE_HANDLED && iter->cpu != cpu) {
			FUNC0(data->cpu_data, iter->cpu)->ignore = 1;
			ret = TRACE_TYPE_NO_CONSUME;
		}
		iter->cpu = cpu;
		return ret;
	}

	switch (entry->type) {
	case TRACE_GRAPH_ENT: {
		/*
		 * print_graph_entry() may consume the current event,
		 * thus @field may become invalid, so we need to save it.
		 * sizeof(struct ftrace_graph_ent_entry) is very small,
		 * it can be safely saved at the stack.
		 */
		struct ftrace_graph_ent_entry saved;
		FUNC4(field, entry);
		saved = *field;
		return FUNC2(&saved, s, iter, flags);
	}
	case TRACE_GRAPH_RET: {
		struct ftrace_graph_ret_entry *field;
		FUNC4(field, entry);
		return FUNC3(&field->ret, s, entry, iter, flags);
	}
	case TRACE_STACK:
	case TRACE_FN:
		/* dont trace stack and functions as comments */
		return TRACE_TYPE_UNHANDLED;

	default:
		return FUNC1(s, entry, iter, flags);
	}

	return TRACE_TYPE_HANDLED;
}