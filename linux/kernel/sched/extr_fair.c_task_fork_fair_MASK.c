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
struct sched_entity {int /*<<< orphan*/  vruntime; } ;
struct task_struct {struct sched_entity se; } ;
struct rq_flags {int dummy; } ;
struct rq {int dummy; } ;
struct cfs_rq {scalar_t__ min_vruntime; struct sched_entity* curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (struct sched_entity*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfs_rq*,struct sched_entity*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct rq*,struct rq_flags*) ; 
 int /*<<< orphan*/  FUNC4 (struct rq*,struct rq_flags*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sysctl_sched_child_runs_first ; 
 struct cfs_rq* FUNC6 (int /*<<< orphan*/ ) ; 
 struct rq* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct rq*) ; 

__attribute__((used)) static void FUNC10(struct task_struct *p)
{
	struct cfs_rq *cfs_rq;
	struct sched_entity *se = &p->se, *curr;
	struct rq *rq = FUNC7();
	struct rq_flags rf;

	FUNC3(rq, &rf);
	FUNC9(rq);

	cfs_rq = FUNC6(current);
	curr = cfs_rq->curr;
	if (curr) {
		FUNC8(cfs_rq);
		se->vruntime = curr->vruntime;
	}
	FUNC1(cfs_rq, se, 1);

	if (sysctl_sched_child_runs_first && curr && FUNC0(curr, se)) {
		/*
		 * Upon rescheduling, sched_class::put_prev_task() will place
		 * 'current' within the tree based on its new key value.
		 */
		FUNC5(curr->vruntime, se->vruntime);
		FUNC2(rq);
	}

	se->vruntime -= cfs_rq->min_vruntime;
	FUNC4(rq, &rf);
}