#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ on_list; scalar_t__ on_rq; int /*<<< orphan*/  time_slice; scalar_t__ timeout; int /*<<< orphan*/  run_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  rb_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  statistics; int /*<<< orphan*/ * cfs_rq; int /*<<< orphan*/  group_node; scalar_t__ vruntime; scalar_t__ nr_migrations; scalar_t__ prev_sum_exec_runtime; scalar_t__ sum_exec_runtime; scalar_t__ exec_start; scalar_t__ on_rq; } ;
struct task_struct {int /*<<< orphan*/ * capture_control; int /*<<< orphan*/  preempt_notifiers; TYPE_2__ rt; TYPE_3__ dl; TYPE_1__ se; scalar_t__ on_rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sched_rr_timeslice ; 

__attribute__((used)) static void FUNC8(unsigned long clone_flags, struct task_struct *p)
{
	p->on_rq			= 0;

	p->se.on_rq			= 0;
	p->se.exec_start		= 0;
	p->se.sum_exec_runtime		= 0;
	p->se.prev_sum_exec_runtime	= 0;
	p->se.nr_migrations		= 0;
	p->se.vruntime			= 0;
	FUNC1(&p->se.group_node);

#ifdef CONFIG_FAIR_GROUP_SCHED
	p->se.cfs_rq			= NULL;
#endif

#ifdef CONFIG_SCHEDSTATS
	/* Even if schedstat is disabled, there should not be garbage */
	memset(&p->se.statistics, 0, sizeof(p->se.statistics));
#endif

	FUNC2(&p->dl.rb_node);
	FUNC5(&p->dl);
	FUNC4(&p->dl);
	FUNC3(p);

	FUNC1(&p->rt.run_list);
	p->rt.timeout		= 0;
	p->rt.time_slice	= sched_rr_timeslice;
	p->rt.on_rq		= 0;
	p->rt.on_list		= 0;

#ifdef CONFIG_PREEMPT_NOTIFIERS
	INIT_HLIST_HEAD(&p->preempt_notifiers);
#endif

#ifdef CONFIG_COMPACTION
	p->capture_control = NULL;
#endif
	FUNC6(clone_flags, p);
}