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
typedef  scalar_t__ u64 ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  exec_max; } ;
struct sched_entity {int /*<<< orphan*/  vruntime; int /*<<< orphan*/  sum_exec_runtime; TYPE_1__ statistics; scalar_t__ exec_start; } ;
struct cfs_rq {int /*<<< orphan*/  exec_clock; struct sched_entity* curr; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC10 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct cfs_rq*) ; 

__attribute__((used)) static void FUNC14(struct cfs_rq *cfs_rq)
{
	struct sched_entity *curr = cfs_rq->curr;
	u64 now = FUNC6(FUNC7(cfs_rq));
	u64 delta_exec;

	if (FUNC12(!curr))
		return;

	delta_exec = now - curr->exec_start;
	if (FUNC12((s64)delta_exec <= 0))
		return;

	curr->exec_start = now;

	FUNC9(curr->statistics.exec_max,
		      FUNC5(delta_exec, curr->statistics.exec_max));

	curr->sum_exec_runtime += delta_exec;
	FUNC8(cfs_rq->exec_clock, delta_exec);

	curr->vruntime += FUNC2(delta_exec, curr);
	FUNC13(cfs_rq);

	if (FUNC4(curr)) {
		struct task_struct *curtask = FUNC10(curr);

		FUNC11(curtask, delta_exec, curr->vruntime);
		FUNC3(curtask, delta_exec);
		FUNC1(curtask, delta_exec);
	}

	FUNC0(cfs_rq, delta_exec);
}