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
struct trace_iterator {int /*<<< orphan*/  ts; int /*<<< orphan*/  cpu; struct trace_entry* ent; struct trace_seq seq; struct trace_array* tr; } ;
struct trace_event {TYPE_1__* funcs; } ;
struct trace_entry {int /*<<< orphan*/  type; int /*<<< orphan*/  pid; } ;
struct trace_array {int trace_flags; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_2__ {int (* hex ) (struct trace_iterator*,int /*<<< orphan*/ ,struct trace_event*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int TRACE_ITER_CONTEXT_INFO ; 
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 struct trace_event* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct trace_iterator*,int /*<<< orphan*/ ,struct trace_event*) ; 
 int FUNC4 (struct trace_seq*) ; 
 scalar_t__ FUNC5 (struct trace_seq*) ; 

__attribute__((used)) static enum print_line_t FUNC6(struct trace_iterator *iter)
{
	struct trace_array *tr = iter->tr;
	struct trace_seq *s = &iter->seq;
	unsigned char newline = '\n';
	struct trace_entry *entry;
	struct trace_event *event;

	entry = iter->ent;

	if (tr->trace_flags & TRACE_ITER_CONTEXT_INFO) {
		FUNC1(s, entry->pid);
		FUNC1(s, iter->cpu);
		FUNC1(s, iter->ts);
		if (FUNC5(s))
			return TRACE_TYPE_PARTIAL_LINE;
	}

	event = FUNC2(entry->type);
	if (event) {
		enum print_line_t ret = event->funcs->hex(iter, 0, event);
		if (ret != TRACE_TYPE_HANDLED)
			return ret;
	}

	FUNC0(s, newline);

	return FUNC4(s);
}