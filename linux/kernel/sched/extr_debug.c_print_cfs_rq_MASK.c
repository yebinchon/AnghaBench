#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct sched_entity {int vruntime; } ;
struct TYPE_9__ {int min_vruntime; } ;
struct rq {int /*<<< orphan*/  lock; TYPE_1__ cfs; } ;
struct TYPE_13__ {int /*<<< orphan*/  runnable_sum; int /*<<< orphan*/  util_avg; int /*<<< orphan*/  load_avg; } ;
struct TYPE_11__ {int /*<<< orphan*/  enqueued; } ;
struct TYPE_12__ {TYPE_3__ util_est; int /*<<< orphan*/  util_avg; int /*<<< orphan*/  runnable_load_avg; int /*<<< orphan*/  load_avg; } ;
struct TYPE_10__ {int /*<<< orphan*/  weight; } ;
struct cfs_rq {int exec_clock; int min_vruntime; TYPE_6__* tg; int /*<<< orphan*/  throttle_count; int /*<<< orphan*/  throttled; int /*<<< orphan*/  tg_load_avg_contrib; TYPE_5__ removed; TYPE_4__ avg; int /*<<< orphan*/  runnable_weight; TYPE_2__ load; int /*<<< orphan*/  nr_running; int /*<<< orphan*/  nr_spread_over; int /*<<< orphan*/  tasks_timeline; } ;
typedef  int s64 ;
struct TYPE_15__ {int vruntime; } ;
struct TYPE_14__ {int /*<<< orphan*/  load_avg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_8__* FUNC2 (struct cfs_rq*) ; 
 struct sched_entity* FUNC3 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct rq* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 

void FUNC11(struct seq_file *m, int cpu, struct cfs_rq *cfs_rq)
{
	s64 MIN_vruntime = -1, min_vruntime, max_vruntime = -1,
		spread, rq0_min_vruntime, spread0;
	struct rq *rq = FUNC5(cpu);
	struct sched_entity *last;
	unsigned long flags;

#ifdef CONFIG_FAIR_GROUP_SCHED
	SEQ_printf(m, "\n");
	SEQ_printf(m, "cfs_rq[%d]:%s\n", cpu, task_group_path(cfs_rq->tg));
#else
	FUNC0(m, "\n");
	FUNC0(m, "cfs_rq[%d]:\n", cpu);
#endif
	FUNC0(m, "  .%-30s: %Ld.%06ld\n", "exec_clock",
			FUNC1(cfs_rq->exec_clock));

	FUNC7(&rq->lock, flags);
	if (FUNC9(&cfs_rq->tasks_timeline))
		MIN_vruntime = (FUNC2(cfs_rq))->vruntime;
	last = FUNC3(cfs_rq);
	if (last)
		max_vruntime = last->vruntime;
	min_vruntime = cfs_rq->min_vruntime;
	rq0_min_vruntime = FUNC5(0)->cfs.min_vruntime;
	FUNC8(&rq->lock, flags);
	FUNC0(m, "  .%-30s: %Ld.%06ld\n", "MIN_vruntime",
			FUNC1(MIN_vruntime));
	FUNC0(m, "  .%-30s: %Ld.%06ld\n", "min_vruntime",
			FUNC1(min_vruntime));
	FUNC0(m, "  .%-30s: %Ld.%06ld\n", "max_vruntime",
			FUNC1(max_vruntime));
	spread = max_vruntime - MIN_vruntime;
	FUNC0(m, "  .%-30s: %Ld.%06ld\n", "spread",
			FUNC1(spread));
	spread0 = min_vruntime - rq0_min_vruntime;
	FUNC0(m, "  .%-30s: %Ld.%06ld\n", "spread0",
			FUNC1(spread0));
	FUNC0(m, "  .%-30s: %d\n", "nr_spread_over",
			cfs_rq->nr_spread_over);
	FUNC0(m, "  .%-30s: %d\n", "nr_running", cfs_rq->nr_running);
	FUNC0(m, "  .%-30s: %ld\n", "load", cfs_rq->load.weight);
#ifdef CONFIG_SMP
	SEQ_printf(m, "  .%-30s: %ld\n", "runnable_weight", cfs_rq->runnable_weight);
	SEQ_printf(m, "  .%-30s: %lu\n", "load_avg",
			cfs_rq->avg.load_avg);
	SEQ_printf(m, "  .%-30s: %lu\n", "runnable_load_avg",
			cfs_rq->avg.runnable_load_avg);
	SEQ_printf(m, "  .%-30s: %lu\n", "util_avg",
			cfs_rq->avg.util_avg);
	SEQ_printf(m, "  .%-30s: %u\n", "util_est_enqueued",
			cfs_rq->avg.util_est.enqueued);
	SEQ_printf(m, "  .%-30s: %ld\n", "removed.load_avg",
			cfs_rq->removed.load_avg);
	SEQ_printf(m, "  .%-30s: %ld\n", "removed.util_avg",
			cfs_rq->removed.util_avg);
	SEQ_printf(m, "  .%-30s: %ld\n", "removed.runnable_sum",
			cfs_rq->removed.runnable_sum);
#ifdef CONFIG_FAIR_GROUP_SCHED
	SEQ_printf(m, "  .%-30s: %lu\n", "tg_load_avg_contrib",
			cfs_rq->tg_load_avg_contrib);
	SEQ_printf(m, "  .%-30s: %ld\n", "tg_load_avg",
			atomic_long_read(&cfs_rq->tg->load_avg));
#endif
#endif
#ifdef CONFIG_CFS_BANDWIDTH
	SEQ_printf(m, "  .%-30s: %d\n", "throttled",
			cfs_rq->throttled);
	SEQ_printf(m, "  .%-30s: %d\n", "throttle_count",
			cfs_rq->throttle_count);
#endif

#ifdef CONFIG_FAIR_GROUP_SCHED
	print_cfs_group_stats(m, cpu, cfs_rq->tg);
#endif
}