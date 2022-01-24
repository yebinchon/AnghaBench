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
struct trace_iterator {int /*<<< orphan*/  ts; struct trace_entry* ent; struct trace_seq seq; struct trace_array* tr; } ;
struct trace_entry {int dummy; } ;
struct trace_array {int trace_flags; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  enum trace_type { ____Placeholder_trace_type } trace_type ;

/* Variables and functions */
 int FLAGS_FILL_END ; 
 int FLAGS_FILL_START ; 
 int TRACE_GRAPH_ENT ; 
 int TRACE_GRAPH_PRINT_ABS_TIME ; 
 int TRACE_GRAPH_PRINT_CPU ; 
 int TRACE_GRAPH_PRINT_PROC ; 
 int TRACE_GRAPH_PRINT_REL_TIME ; 
 int TRACE_ITER_CONTEXT_INFO ; 
 int TRACE_ITER_LATENCY_FMT ; 
 scalar_t__ __irqentry_text_end ; 
 scalar_t__ __irqentry_text_start ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_array*,int /*<<< orphan*/ ,struct trace_seq*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,struct trace_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_iterator*,struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_seq*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct trace_seq*,char*) ; 

__attribute__((used)) static void
FUNC8(struct trace_iterator *iter, unsigned long addr,
		enum trace_type type, int cpu, pid_t pid, u32 flags)
{
	struct trace_array *tr = iter->tr;
	struct trace_seq *s = &iter->seq;
	struct trace_entry *ent = iter->ent;

	if (addr < (unsigned long)__irqentry_text_start ||
		addr >= (unsigned long)__irqentry_text_end)
		return;

	if (tr->trace_flags & TRACE_ITER_CONTEXT_INFO) {
		/* Absolute time */
		if (flags & TRACE_GRAPH_PRINT_ABS_TIME)
			FUNC0(iter->ts, s);

		/* Relative time */
		if (flags & TRACE_GRAPH_PRINT_REL_TIME)
			FUNC5(iter, s);

		/* Cpu */
		if (flags & TRACE_GRAPH_PRINT_CPU)
			FUNC1(s, cpu);

		/* Proc */
		if (flags & TRACE_GRAPH_PRINT_PROC) {
			FUNC4(s, pid);
			FUNC7(s, " | ");
		}

		/* Latency format */
		if (tr->trace_flags & TRACE_ITER_LATENCY_FMT)
			FUNC3(s, ent);
	}

	/* No overhead */
	FUNC2(tr, 0, s, flags | FLAGS_FILL_START);

	if (type == TRACE_GRAPH_ENT)
		FUNC7(s, "==========>");
	else
		FUNC7(s, "<==========");

	FUNC2(tr, 0, s, flags | FLAGS_FILL_END);
	FUNC6(s, '\n');
}