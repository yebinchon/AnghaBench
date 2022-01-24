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
struct task_struct {int /*<<< orphan*/  rcu; int /*<<< orphan*/  rcu_users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delayed_put_task_struct ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct task_struct *task)
{
	if (FUNC1(&task->rcu_users))
		FUNC0(&task->rcu, delayed_put_task_struct);
}