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
struct trace_array {int /*<<< orphan*/  function_pids; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 struct trace_pid_list* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_pid_list*,struct task_struct*,struct task_struct*) ; 

__attribute__((used)) static void
FUNC2(void *data,
				     struct task_struct *self,
				     struct task_struct *task)
{
	struct trace_pid_list *pid_list;
	struct trace_array *tr = data;

	pid_list = FUNC0(tr->function_pids);
	FUNC1(pid_list, self, task);
}