#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int /*<<< orphan*/  pushable_dl_tasks; int /*<<< orphan*/  pushable_tasks; scalar_t__ on_cpu; int /*<<< orphan*/  sched_info; int /*<<< orphan*/  pi_lock; TYPE_1__* sched_class; int /*<<< orphan*/  se; int /*<<< orphan*/  prio; scalar_t__ sched_reset_on_fork; int /*<<< orphan*/  normal_prio; void* static_prio; scalar_t__ rt_priority; int /*<<< orphan*/  policy; int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int /*<<< orphan*/  normal_prio; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* task_fork ) (struct task_struct*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  MAX_PRIO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCHED_NORMAL ; 
 int /*<<< orphan*/  TASK_NEW ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ fair_sched_class ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_1__ rt_sched_class ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct task_struct*) ; 
 scalar_t__ FUNC19 (struct task_struct*) ; 
 scalar_t__ FUNC20 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC21 (struct task_struct*) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 

int FUNC23(unsigned long clone_flags, struct task_struct *p)
{
	unsigned long flags;

	FUNC4(clone_flags, p);
	/*
	 * We mark the process as NEW here. This guarantees that
	 * nobody will actually run it, and a signal or other external
	 * event cannot wake it up and insert it on the runqueue either.
	 */
	p->state = TASK_NEW;

	/*
	 * Make sure we do not leak PI boosting priority to the child.
	 */
	p->prio = current->normal_prio;

	FUNC21(p);

	/*
	 * Revert to default priority/policy on fork if requested.
	 */
	if (FUNC22(p->sched_reset_on_fork)) {
		if (FUNC19(p) || FUNC20(p)) {
			p->policy = SCHED_NORMAL;
			p->static_prio = FUNC0(0);
			p->rt_priority = 0;
		} else if (FUNC1(p->static_prio) < 0)
			p->static_prio = FUNC0(0);

		p->prio = p->normal_prio = FUNC3(p);
		FUNC16(p, false);

		/*
		 * We don't need the reset flag anymore after the fork. It has
		 * fulfilled its duty:
		 */
		p->sched_reset_on_fork = 0;
	}

	if (FUNC6(p->prio))
		return -EAGAIN;
	else if (FUNC14(p->prio))
		p->sched_class = &rt_sched_class;
	else
		p->sched_class = &fair_sched_class;

	FUNC7(&p->se);

	/*
	 * The child is not yet in the pid-hash so no cgroup attach races,
	 * and the cgroup is pinned to this child due to cgroup_fork()
	 * is ran before sched_fork().
	 *
	 * Silence PROVE_RCU.
	 */
	FUNC12(&p->pi_lock, flags);
	/*
	 * We're setting the CPU for the first time, we don't migrate,
	 * so use __set_task_cpu().
	 */
	FUNC5(p, FUNC17());
	if (p->sched_class->task_fork)
		p->sched_class->task_fork(p);
	FUNC13(&p->pi_lock, flags);

#ifdef CONFIG_SCHED_INFO
	if (likely(sched_info_on()))
		memset(&p->sched_info, 0, sizeof(p->sched_info));
#endif
#if defined(CONFIG_SMP)
	p->on_cpu = 0;
#endif
	FUNC8(p);
#ifdef CONFIG_SMP
	plist_node_init(&p->pushable_tasks, MAX_PRIO);
	RB_CLEAR_NODE(&p->pushable_dl_tasks);
#endif
	return 0;
}