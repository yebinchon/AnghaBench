#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ftrace_func_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ftrace_list_end ; 
 int /*<<< orphan*/  ftrace_lock ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_1__* ftrace_ops_list ; 
 scalar_t__ ftrace_ops_list_func ; 
 scalar_t__ ftrace_stub ; 
 int /*<<< orphan*/  ftrace_sync ; 
 int /*<<< orphan*/  ftrace_sync_ipi ; 
 scalar_t__ ftrace_trace_function ; 
 int /*<<< orphan*/ * function_trace_op ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * set_function_trace_op ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	ftrace_func_t func;

	/*
	 * Prepare the ftrace_ops that the arch callback will use.
	 * If there's only one ftrace_ops registered, the ftrace_ops_list
	 * will point to the ops we want.
	 */
	set_function_trace_op = FUNC2(ftrace_ops_list,
						FUNC1(&ftrace_lock));

	/* If there's no ftrace_ops registered, just call the stub function */
	if (set_function_trace_op == &ftrace_list_end) {
		func = ftrace_stub;

	/*
	 * If we are at the end of the list and this ops is
	 * recursion safe and not dynamic and the arch supports passing ops,
	 * then have the mcount trampoline call the function directly.
	 */
	} else if (FUNC2(ftrace_ops_list->next,
			FUNC1(&ftrace_lock)) == &ftrace_list_end) {
		func = FUNC0(ftrace_ops_list);

	} else {
		/* Just use the default ftrace_ops */
		set_function_trace_op = &ftrace_list_end;
		func = ftrace_ops_list_func;
	}

	FUNC6();

	/* If there's no change, then do nothing more here */
	if (ftrace_trace_function == func)
		return;

	/*
	 * If we are using the list function, it doesn't care
	 * about the function_trace_ops.
	 */
	if (func == ftrace_ops_list_func) {
		ftrace_trace_function = func;
		/*
		 * Don't even bother setting function_trace_ops,
		 * it would be racy to do so anyway.
		 */
		return;
	}

#ifndef CONFIG_DYNAMIC_FTRACE
	/*
	 * For static tracing, we need to be a bit more careful.
	 * The function change takes affect immediately. Thus,
	 * we need to coorditate the setting of the function_trace_ops
	 * with the setting of the ftrace_trace_function.
	 *
	 * Set the function to the list ops, which will call the
	 * function we want, albeit indirectly, but it handles the
	 * ftrace_ops and doesn't depend on function_trace_op.
	 */
	ftrace_trace_function = ftrace_ops_list_func;
	/*
	 * Make sure all CPUs see this. Yes this is slow, but static
	 * tracing is slow and nasty to have enabled.
	 */
	FUNC3(ftrace_sync);
	/* Now all cpus are using the list ops. */
	function_trace_op = set_function_trace_op;
	/* Make sure the function_trace_op is visible on all CPUs */
	FUNC5();
	/* Nasty way to force a rmb on all cpus */
	FUNC4(ftrace_sync_ipi, NULL, 1);
	/* OK, we are all set to update the ftrace_trace_function now! */
#endif /* !CONFIG_DYNAMIC_FTRACE */

	ftrace_trace_function = func;
}