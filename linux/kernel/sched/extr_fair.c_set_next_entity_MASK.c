#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_9__ {int /*<<< orphan*/  slice_max; } ;
struct TYPE_8__ {int weight; } ;
struct sched_entity {scalar_t__ sum_exec_runtime; scalar_t__ prev_sum_exec_runtime; TYPE_4__ statistics; TYPE_3__ load; scalar_t__ on_rq; } ;
struct cfs_rq {struct sched_entity* curr; } ;
struct TYPE_6__ {int weight; } ;
struct TYPE_7__ {TYPE_1__ load; } ;
struct TYPE_10__ {TYPE_2__ cfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  UPDATE_TG ; 
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_5__* FUNC2 (struct cfs_rq*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cfs_rq*,struct sched_entity*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC8 (struct cfs_rq*,struct sched_entity*) ; 

__attribute__((used)) static void
FUNC9(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
	/* 'current' is not kept within the tree. */
	if (se->on_rq) {
		/*
		 * Any task has to be enqueued before it get to execute on
		 * a CPU. So account for the time it spent waiting on the
		 * runqueue.
		 */
		FUNC8(cfs_rq, se);
		FUNC0(cfs_rq, se);
		FUNC6(cfs_rq, se, UPDATE_TG);
	}

	FUNC7(cfs_rq, se);
	cfs_rq->curr = se;

	/*
	 * Track our maximum slice length, if the CPU's load is at
	 * least twice that of our own weight (i.e. dont track it
	 * when there are only lesser-weight tasks around):
	 */
	if (FUNC3() &&
	    FUNC2(cfs_rq)->cfs.load.weight >= 2*se->load.weight) {
		FUNC4(se->statistics.slice_max,
			FUNC1((u64)FUNC5(se->statistics.slice_max),
			    se->sum_exec_runtime - se->prev_sum_exec_runtime));
	}

	se->prev_sum_exec_runtime = se->sum_exec_runtime;
}