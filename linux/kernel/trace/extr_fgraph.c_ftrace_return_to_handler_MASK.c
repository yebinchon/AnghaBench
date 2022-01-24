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
struct ftrace_graph_ret {int /*<<< orphan*/  rettime; } ;
struct TYPE_2__ {int /*<<< orphan*/  curr_ret_stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (struct ftrace_graph_ret*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ftrace_graph_ret*,unsigned long*,unsigned long) ; 
 scalar_t__ panic ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 

unsigned long FUNC7(unsigned long frame_pointer)
{
	struct ftrace_graph_ret trace;
	unsigned long ret;

	FUNC4(&trace, &ret, frame_pointer);
	trace.rettime = FUNC5();
	FUNC2(&trace);
	/*
	 * The ftrace_graph_return() may still access the current
	 * ret_stack structure, we need to make sure the update of
	 * curr_ret_stack is after that.
	 */
	FUNC1();
	current->curr_ret_stack--;

	if (FUNC6(!ret)) {
		FUNC3();
		FUNC0(1);
		/* Might as well panic. What else to do? */
		ret = (unsigned long)panic;
	}

	return ret;
}