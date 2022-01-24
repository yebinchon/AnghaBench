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
struct ftrace_ops {int flags; int /*<<< orphan*/  func; int /*<<< orphan*/  saved_func; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int FTRACE_OPS_FL_DELETED ; 
 int FTRACE_OPS_FL_DYNAMIC ; 
 int FTRACE_OPS_FL_ENABLED ; 
 int FTRACE_OPS_FL_SAVE_REGS ; 
 int FTRACE_OPS_FL_SAVE_REGS_IF_SUPPORTED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ftrace_ops*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ ftrace_enabled ; 
 int /*<<< orphan*/  ftrace_ops_list ; 
 int /*<<< orphan*/  ftrace_pid_func ; 
 scalar_t__ FUNC3 (struct ftrace_ops*) ; 
 int /*<<< orphan*/  FUNC4 (struct ftrace_ops*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct ftrace_ops *ops)
{
	if (ops->flags & FTRACE_OPS_FL_DELETED)
		return -EINVAL;

	if (FUNC0(ops->flags & FTRACE_OPS_FL_ENABLED))
		return -EBUSY;

#ifndef CONFIG_DYNAMIC_FTRACE_WITH_REGS
	/*
	 * If the ftrace_ops specifies SAVE_REGS, then it only can be used
	 * if the arch supports it, or SAVE_REGS_IF_SUPPORTED is also set.
	 * Setting SAVE_REGS_IF_SUPPORTED makes SAVE_REGS irrelevant.
	 */
	if (ops->flags & FTRACE_OPS_FL_SAVE_REGS &&
	    !(ops->flags & FTRACE_OPS_FL_SAVE_REGS_IF_SUPPORTED))
		return -EINVAL;

	if (ops->flags & FTRACE_OPS_FL_SAVE_REGS_IF_SUPPORTED)
		ops->flags |= FTRACE_OPS_FL_SAVE_REGS;
#endif

	if (!FUNC2((unsigned long)ops))
		ops->flags |= FTRACE_OPS_FL_DYNAMIC;

	FUNC1(&ftrace_ops_list, ops);

	/* Always save the function, and reset at unregistering */
	ops->saved_func = ops->func;

	if (FUNC3(ops))
		ops->func = ftrace_pid_func;

	FUNC4(ops);

	if (ftrace_enabled)
		FUNC5();

	return 0;
}