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
struct task_struct {int nr_cpus_allowed; int /*<<< orphan*/  rt; } ;
struct rq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rq*,struct task_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct rq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct rq*,int) ; 

__attribute__((used)) static void FUNC5(struct rq *rq, struct task_struct *p)
{
	FUNC3(rq);

	FUNC4(FUNC2(rq), rq, 1);

	/*
	 * The previous task needs to be made eligible for pushing
	 * if it is still active
	 */
	if (FUNC1(&p->rt) && p->nr_cpus_allowed > 1)
		FUNC0(rq, p);
}