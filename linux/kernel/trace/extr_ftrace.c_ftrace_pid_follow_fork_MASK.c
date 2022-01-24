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
struct trace_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ftrace_pid_follow_sched_process_exit ; 
 int /*<<< orphan*/  ftrace_pid_follow_sched_process_fork ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct trace_array*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct trace_array*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct trace_array*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct trace_array*) ; 

void FUNC4(struct trace_array *tr, bool enable)
{
	if (enable) {
		FUNC1(ftrace_pid_follow_sched_process_fork,
						  tr);
		FUNC0(ftrace_pid_follow_sched_process_exit,
						  tr);
	} else {
		FUNC3(ftrace_pid_follow_sched_process_fork,
						    tr);
		FUNC2(ftrace_pid_follow_sched_process_exit,
						    tr);
	}
}