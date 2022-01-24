#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  inactive_timer; } ;
struct task_struct {int nr_cpus_allowed; TYPE_1__ dl; } ;
struct TYPE_4__ {scalar_t__ overloaded; } ;
struct rq {struct task_struct* curr; TYPE_2__ dl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct rq*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 

__attribute__((used)) static void FUNC8(struct rq *rq, struct task_struct *p)
{
	if (FUNC4(&p->dl.inactive_timer) == 1)
		FUNC5(p);

	/* If p is not queued we will update its parameters at next wakeup. */
	if (!FUNC7(p)) {
		FUNC0(&p->dl, &rq->dl);

		return;
	}

	if (rq->curr != p) {
#ifdef CONFIG_SMP
		if (p->nr_cpus_allowed > 1 && rq->dl.overloaded)
			deadline_queue_push_tasks(rq);
#endif
		if (FUNC3(rq->curr))
			FUNC1(rq, p, 0);
		else
			FUNC6(rq);
	}
}