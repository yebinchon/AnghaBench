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
struct task_struct {int /*<<< orphan*/ * pid_links; int /*<<< orphan*/  thread_pid; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 int PIDTYPE_PID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(struct task_struct *old, struct task_struct *new,
			   enum pid_type type)
{
	if (type == PIDTYPE_PID)
		new->thread_pid = old->thread_pid;
	FUNC0(&old->pid_links[type], &new->pid_links[type]);
}