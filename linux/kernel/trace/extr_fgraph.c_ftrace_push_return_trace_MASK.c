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
struct TYPE_4__ {int curr_ret_stack; TYPE_1__* ret_stack; int /*<<< orphan*/  trace_overrun; } ;
struct TYPE_3__ {unsigned long ret; unsigned long func; unsigned long long calltime; unsigned long fp; unsigned long* retp; } ;

/* Variables and functions */
 int EBUSY ; 
 int FTRACE_RETFUNC_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long long FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(unsigned long ret, unsigned long func,
			 unsigned long frame_pointer, unsigned long *retp)
{
	unsigned long long calltime;
	int index;

	if (FUNC5(FUNC2()))
		return -EBUSY;

	if (!current->ret_stack)
		return -EBUSY;

	/*
	 * We must make sure the ret_stack is tested before we read
	 * anything else.
	 */
	FUNC3();

	/* The return trace stack is full */
	if (current->curr_ret_stack == FTRACE_RETFUNC_DEPTH - 1) {
		FUNC0(&current->trace_overrun);
		return -EBUSY;
	}

	calltime = FUNC4();

	index = ++current->curr_ret_stack;
	FUNC1();
	current->ret_stack[index].ret = ret;
	current->ret_stack[index].func = func;
	current->ret_stack[index].calltime = calltime;
#ifdef HAVE_FUNCTION_GRAPH_FP_TEST
	current->ret_stack[index].fp = frame_pointer;
#endif
#ifdef HAVE_FUNCTION_GRAPH_RET_ADDR_PTR
	current->ret_stack[index].retp = retp;
#endif
	return 0;
}