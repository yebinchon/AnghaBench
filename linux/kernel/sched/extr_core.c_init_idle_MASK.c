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
struct TYPE_2__ {int /*<<< orphan*/  exec_start; } ;
struct task_struct {int on_cpu; int /*<<< orphan*/  comm; int /*<<< orphan*/ * sched_class; int /*<<< orphan*/  pi_lock; int /*<<< orphan*/  on_rq; int /*<<< orphan*/  flags; TYPE_1__ se; int /*<<< orphan*/  state; } ;
struct rq {int /*<<< orphan*/  lock; int /*<<< orphan*/  curr; struct task_struct* idle; } ;

/* Variables and functions */
 char* INIT_TASK_COMM ; 
 int /*<<< orphan*/  PF_IDLE ; 
 int /*<<< orphan*/  TASK_ON_RQ_QUEUED ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int) ; 
 struct rq* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,int) ; 
 int /*<<< orphan*/  idle_sched_class ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct task_struct*,int) ; 

void FUNC18(struct task_struct *idle, int cpu)
{
	struct rq *rq = FUNC2(cpu);
	unsigned long flags;

	FUNC8(&idle->pi_lock, flags);
	FUNC7(&rq->lock);

	FUNC0(0, idle);
	idle->state = TASK_RUNNING;
	idle->se.exec_start = FUNC14();
	idle->flags |= PF_IDLE;

	FUNC6(idle);

#ifdef CONFIG_SMP
	/*
	 * Its possible that init_idle() gets called multiple times on a task,
	 * in that case do_set_cpus_allowed() will not do the right thing.
	 *
	 * And since this is boot we can forgo the serialization.
	 */
	set_cpus_allowed_common(idle, cpumask_of(cpu));
#endif
	/*
	 * We're having a chicken and egg problem, even though we are
	 * holding rq->lock, the CPU isn't yet set to this CPU so the
	 * lockdep check in task_group() will fail.
	 *
	 * Similar case to sched_fork(). / Alternatively we could
	 * use task_rq_lock() here and obtain the other rq->lock.
	 *
	 * Silence PROVE_RCU
	 */
	FUNC12();
	FUNC1(idle, cpu);
	FUNC13();

	rq->idle = idle;
	FUNC11(rq->curr, idle);
	idle->on_rq = TASK_ON_RQ_QUEUED;
#ifdef CONFIG_SMP
	idle->on_cpu = 1;
#endif
	FUNC9(&rq->lock);
	FUNC10(&idle->pi_lock, flags);

	/* Set the preempt count _outside_ the spinlocks! */
	FUNC5(idle, cpu);

	/*
	 * The idle tasks have their own, simple scheduling class:
	 */
	idle->sched_class = &idle_sched_class;
	FUNC4(idle, cpu);
	FUNC17(idle, cpu);
#ifdef CONFIG_SMP
	sprintf(idle->comm, "%s/%d", INIT_TASK_COMM, cpu);
#endif
}