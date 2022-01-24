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
struct task_struct {int /*<<< orphan*/  pi_lock; int /*<<< orphan*/  flags; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_NO_SETAFFINITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,long) ; 

__attribute__((used)) static void FUNC5(struct task_struct *p, const struct cpumask *mask, long state)
{
	unsigned long flags;

	if (!FUNC4(p, state)) {
		FUNC0(1);
		return;
	}

	/* It's safe because the task is inactive. */
	FUNC2(&p->pi_lock, flags);
	FUNC1(p, mask);
	p->flags |= PF_NO_SETAFFINITY;
	FUNC3(&p->pi_lock, flags);
}