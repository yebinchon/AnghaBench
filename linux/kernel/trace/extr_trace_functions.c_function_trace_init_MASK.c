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
struct TYPE_3__ {int /*<<< orphan*/  cpu; } ;
struct trace_array {int flags; TYPE_1__ trace_buffer; int /*<<< orphan*/  ops; } ;
typedef  int /*<<< orphan*/  ftrace_func_t ;
struct TYPE_4__ {int val; } ;

/* Variables and functions */
 int ENOMEM ; 
 int TRACE_ARRAY_FL_GLOBAL ; 
 int TRACE_FUNC_OPT_STACK ; 
 int /*<<< orphan*/  FUNC0 (struct trace_array*,int /*<<< orphan*/ ) ; 
 TYPE_2__ func_flags ; 
 int /*<<< orphan*/  function_stack_trace_call ; 
 int /*<<< orphan*/  function_trace_call ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct trace_array*) ; 

__attribute__((used)) static int FUNC5(struct trace_array *tr)
{
	ftrace_func_t func;

	/*
	 * Instance trace_arrays get their ops allocated
	 * at instance creation. Unless it failed
	 * the allocation.
	 */
	if (!tr->ops)
		return -ENOMEM;

	/* Currently only the global instance can do stack tracing */
	if (tr->flags & TRACE_ARRAY_FL_GLOBAL &&
	    func_flags.val & TRACE_FUNC_OPT_STACK)
		func = function_stack_trace_call;
	else
		func = function_trace_call;

	FUNC0(tr, func);

	tr->trace_buffer.cpu = FUNC1();
	FUNC2();

	FUNC3();
	FUNC4(tr);
	return 0;
}