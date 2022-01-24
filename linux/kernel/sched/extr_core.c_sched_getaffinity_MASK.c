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
struct task_struct {int /*<<< orphan*/  pi_lock; int /*<<< orphan*/  cpus_mask; } ;
struct cpumask {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  cpu_active_mask ; 
 int /*<<< orphan*/  FUNC0 (struct cpumask*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct task_struct*) ; 

long FUNC7(pid_t pid, struct cpumask *mask)
{
	struct task_struct *p;
	unsigned long flags;
	int retval;

	FUNC4();

	retval = -ESRCH;
	p = FUNC1(pid);
	if (!p)
		goto out_unlock;

	retval = FUNC6(p);
	if (retval)
		goto out_unlock;

	FUNC2(&p->pi_lock, flags);
	FUNC0(mask, &p->cpus_mask, cpu_active_mask);
	FUNC3(&p->pi_lock, flags);

out_unlock:
	FUNC5();

	return retval;
}