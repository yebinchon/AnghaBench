#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rcu_cpu_kthread_status; int /*<<< orphan*/  rcu_cpu_kthread_task; int /*<<< orphan*/  rcu_cpu_has_work; } ;

/* Variables and functions */
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 TYPE_1__ rcu_data ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,struct task_struct*) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct task_struct *t;
	unsigned long flags;

	FUNC3(flags);
	FUNC1(rcu_data.rcu_cpu_has_work, 1);
	t = FUNC0(rcu_data.rcu_cpu_kthread_task);
	if (t != NULL && t != current)
		FUNC4(t, FUNC0(rcu_data.rcu_cpu_kthread_status));
	FUNC2(flags);
}