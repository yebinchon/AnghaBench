#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct trace_iterator {TYPE_2__* ent; TYPE_1__* trace; int /*<<< orphan*/  seq; scalar_t__ lost_events; int /*<<< orphan*/  cpu; struct trace_array* tr; } ;
struct trace_array {unsigned long trace_flags; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int (* print_line ) (struct trace_iterator*) ;} ;

/* Variables and functions */
 scalar_t__ TRACE_BPRINT ; 
 scalar_t__ TRACE_BPUTS ; 
 unsigned long TRACE_ITER_BIN ; 
 unsigned long TRACE_ITER_HEX ; 
 unsigned long TRACE_ITER_PRINTK ; 
 unsigned long TRACE_ITER_PRINTK_MSGONLY ; 
 unsigned long TRACE_ITER_RAW ; 
 scalar_t__ TRACE_PRINT ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 int TRACE_TYPE_UNHANDLED ; 
 int FUNC0 (struct trace_iterator*) ; 
 int FUNC1 (struct trace_iterator*) ; 
 int FUNC2 (struct trace_iterator*) ; 
 int FUNC3 (struct trace_iterator*) ; 
 int FUNC4 (struct trace_iterator*) ; 
 int FUNC5 (struct trace_iterator*) ; 
 int FUNC6 (struct trace_iterator*) ; 
 int FUNC7 (struct trace_iterator*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 

enum print_line_t FUNC10(struct trace_iterator *iter)
{
	struct trace_array *tr = iter->tr;
	unsigned long trace_flags = tr->trace_flags;
	enum print_line_t ret;

	if (iter->lost_events) {
		FUNC9(&iter->seq, "CPU:%d [LOST %lu EVENTS]\n",
				 iter->cpu, iter->lost_events);
		if (FUNC8(&iter->seq))
			return TRACE_TYPE_PARTIAL_LINE;
	}

	if (iter->trace && iter->trace->print_line) {
		ret = iter->trace->print_line(iter);
		if (ret != TRACE_TYPE_UNHANDLED)
			return ret;
	}

	if (iter->ent->type == TRACE_BPUTS &&
			trace_flags & TRACE_ITER_PRINTK &&
			trace_flags & TRACE_ITER_PRINTK_MSGONLY)
		return FUNC6(iter);

	if (iter->ent->type == TRACE_BPRINT &&
			trace_flags & TRACE_ITER_PRINTK &&
			trace_flags & TRACE_ITER_PRINTK_MSGONLY)
		return FUNC5(iter);

	if (iter->ent->type == TRACE_PRINT &&
			trace_flags & TRACE_ITER_PRINTK &&
			trace_flags & TRACE_ITER_PRINTK_MSGONLY)
		return FUNC7(iter);

	if (trace_flags & TRACE_ITER_BIN)
		return FUNC0(iter);

	if (trace_flags & TRACE_ITER_HEX)
		return FUNC1(iter);

	if (trace_flags & TRACE_ITER_RAW)
		return FUNC2(iter);

	return FUNC3(iter);
}