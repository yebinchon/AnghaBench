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
struct task_struct {TYPE_1__* sched_class; } ;
struct rq_flags {int dummy; } ;
struct rq {int /*<<< orphan*/  idle_balance; struct task_struct* curr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* task_tick ) (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rq*) ; 
 struct rq* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct rq*,struct rq_flags*) ; 
 int /*<<< orphan*/  FUNC6 (struct rq*,struct rq_flags*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rq*) ; 
 int /*<<< orphan*/  FUNC11 (struct rq*) ; 

void FUNC12(void)
{
	int cpu = FUNC8();
	struct rq *rq = FUNC1(cpu);
	struct task_struct *curr = rq->curr;
	struct rq_flags rf;

	FUNC7();

	FUNC5(rq, &rf);

	FUNC11(rq);
	curr->sched_class->task_tick(rq, curr, 0);
	FUNC0(rq);
	FUNC4(rq);

	FUNC6(rq, &rf);

	FUNC3();

#ifdef CONFIG_SMP
	rq->idle_balance = idle_cpu(cpu);
	trigger_load_balance(rq);
#endif
}