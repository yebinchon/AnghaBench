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
struct rq_flags {int dummy; } ;
struct rq {int /*<<< orphan*/  yld_count; } ;
struct TYPE_4__ {TYPE_1__* sched_class; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* yield_task ) (struct rq*) ;} ;

/* Variables and functions */
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct rq*,struct rq_flags*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct rq*) ; 
 struct rq* FUNC6 (struct rq_flags*) ; 

__attribute__((used)) static void FUNC7(void)
{
	struct rq_flags rf;
	struct rq *rq;

	rq = FUNC6(&rf);

	FUNC3(rq->yld_count);
	current->sched_class->yield_task(rq);

	/*
	 * Since we are going to call schedule() anyway, there's
	 * no need to preempt or enable interrupts:
	 */
	FUNC0();
	FUNC1(rq, &rf);
	FUNC2();

	FUNC4();
}