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
struct task_struct {int policy; int /*<<< orphan*/  normal_prio; int /*<<< orphan*/  rt_priority; int /*<<< orphan*/  static_prio; } ;
struct sched_attr {int sched_policy; int /*<<< orphan*/  sched_priority; int /*<<< orphan*/  sched_nice; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SETPARAM_POLICY ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct sched_attr const*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int) ; 

__attribute__((used)) static void FUNC6(struct task_struct *p,
		const struct sched_attr *attr)
{
	int policy = attr->sched_policy;

	if (policy == SETPARAM_POLICY)
		policy = p->policy;

	p->policy = policy;

	if (FUNC2(policy))
		FUNC1(p, attr);
	else if (FUNC3(policy))
		p->static_prio = FUNC0(attr->sched_nice);

	/*
	 * __sched_setscheduler() ensures attr->sched_priority == 0 when
	 * !rt_policy. Always setting this ensures that things like
	 * getparam()/getattr() don't report silly values for !rt tasks.
	 */
	p->rt_priority = attr->sched_priority;
	p->normal_prio = FUNC4(p);
	FUNC5(p, true);
}