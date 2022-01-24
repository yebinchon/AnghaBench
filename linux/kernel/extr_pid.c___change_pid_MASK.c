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
struct task_struct {int /*<<< orphan*/ * pid_links; } ;
struct pid {int /*<<< orphan*/ * tasks; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 int PIDTYPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct pid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct pid** FUNC3 (struct task_struct*,int) ; 

__attribute__((used)) static void FUNC4(struct task_struct *task, enum pid_type type,
			struct pid *new)
{
	struct pid **pid_ptr = FUNC3(task, type);
	struct pid *pid;
	int tmp;

	pid = *pid_ptr;

	FUNC1(&task->pid_links[type]);
	*pid_ptr = new;

	for (tmp = PIDTYPE_MAX; --tmp >= 0; )
		if (!FUNC2(&pid->tasks[tmp]))
			return;

	FUNC0(pid);
}