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
struct trace_seq {int dummy; } ;
struct trace_iterator {int iter_flags; struct trace_entry* ent; struct trace_seq seq; struct trace_array* tr; } ;
struct trace_event {TYPE_1__* funcs; } ;
struct trace_entry {int /*<<< orphan*/  type; } ;
struct trace_array {unsigned long trace_flags; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_2__ {int (* trace ) (struct trace_iterator*,unsigned long,struct trace_event*) ;} ;

/* Variables and functions */
 int TRACE_FILE_LAT_FMT ; 
 int TRACE_ITER_CONTEXT_INFO ; 
 unsigned long TRACE_ITER_SYM_MASK ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 struct trace_event* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct trace_iterator*,unsigned long,struct trace_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_iterator*) ; 
 int FUNC3 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_iterator*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_iterator*) ; 
 scalar_t__ FUNC6 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC7 (struct trace_seq*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum print_line_t FUNC8(struct trace_iterator *iter)
{
	struct trace_array *tr = iter->tr;
	struct trace_seq *s = &iter->seq;
	unsigned long sym_flags = (tr->trace_flags & TRACE_ITER_SYM_MASK);
	struct trace_entry *entry;
	struct trace_event *event;

	entry = iter->ent;

	FUNC2(iter);

	event = FUNC0(entry->type);

	if (tr->trace_flags & TRACE_ITER_CONTEXT_INFO) {
		if (iter->iter_flags & TRACE_FILE_LAT_FMT)
			FUNC5(iter);
		else
			FUNC4(iter);
	}

	if (FUNC6(s))
		return TRACE_TYPE_PARTIAL_LINE;

	if (event)
		return event->funcs->trace(iter, sym_flags, event);

	FUNC7(s, "Unknown type %d\n", entry->type);

	return FUNC3(s);
}