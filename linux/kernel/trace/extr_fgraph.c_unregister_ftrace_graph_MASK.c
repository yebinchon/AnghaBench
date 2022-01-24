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
typedef  scalar_t__ trace_func_graph_ret_t ;
struct fgraph_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTRACE_STOP_FUNC_RET ; 
 void* __ftrace_graph_entry ; 
 int /*<<< orphan*/  ftrace_graph_active ; 
 void* ftrace_graph_entry ; 
 void* ftrace_graph_entry_stub ; 
 int /*<<< orphan*/  ftrace_graph_probe_sched_switch ; 
 scalar_t__ ftrace_graph_return ; 
 int /*<<< orphan*/  ftrace_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ftrace_stub ; 
 int /*<<< orphan*/  ftrace_suspend_notifier ; 
 int /*<<< orphan*/  graph_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct fgraph_ops *gops)
{
	FUNC1(&ftrace_lock);

	if (FUNC3(!ftrace_graph_active))
		goto out;

	ftrace_graph_active--;
	ftrace_graph_return = (trace_func_graph_ret_t)ftrace_stub;
	ftrace_graph_entry = ftrace_graph_entry_stub;
	__ftrace_graph_entry = ftrace_graph_entry_stub;
	FUNC0(&graph_ops, FTRACE_STOP_FUNC_RET);
	FUNC4(&ftrace_suspend_notifier);
	FUNC5(ftrace_graph_probe_sched_switch, NULL);

 out:
	FUNC2(&ftrace_lock);
}