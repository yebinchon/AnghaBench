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
struct TYPE_3__ {int /*<<< orphan*/  exec_start; } ;
struct task_struct {TYPE_1__ se; } ;
struct rq {TYPE_2__* curr; } ;
struct TYPE_4__ {int /*<<< orphan*/ * sched_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rq*) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*,struct task_struct*) ; 
 int /*<<< orphan*/  dl_sched_class ; 
 scalar_t__ FUNC2 (struct rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct rq*) ; 
 int /*<<< orphan*/  FUNC4 (struct rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct rq*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct rq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rq *rq, struct task_struct *p)
{
	p->se.exec_start = FUNC4(rq);

	/* You can't push away the running task */
	FUNC1(rq, p);

	if (FUNC2(rq))
		FUNC5(rq, p);

	if (rq->curr->sched_class != &dl_sched_class)
		FUNC6(FUNC3(rq), rq, 0);

	FUNC0(rq);
}