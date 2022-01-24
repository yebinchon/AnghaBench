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
struct trace_pid_list {int dummy; } ;
struct task_struct {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_pid_list*,int /*<<< orphan*/ ) ; 

bool
FUNC1(struct trace_pid_list *filtered_pids, struct task_struct *task)
{
	/*
	 * Return false, because if filtered_pids does not exist,
	 * all pids are good to trace.
	 */
	if (!filtered_pids)
		return false;

	return !FUNC0(filtered_pids, task->pid);
}