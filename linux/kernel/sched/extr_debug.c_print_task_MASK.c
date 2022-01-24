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
struct TYPE_3__ {int /*<<< orphan*/  sum_sleep_runtime; int /*<<< orphan*/  wait_sum; } ;
struct TYPE_4__ {TYPE_1__ statistics; int /*<<< orphan*/  sum_exec_runtime; int /*<<< orphan*/  vruntime; } ;
struct task_struct {TYPE_2__ se; int /*<<< orphan*/  prio; scalar_t__ nivcsw; scalar_t__ nvcsw; int /*<<< orphan*/  comm; } ;
struct seq_file {int dummy; } ;
struct rq {struct task_struct* curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 

__attribute__((used)) static void
FUNC9(struct seq_file *m, struct rq *rq, struct task_struct *p)
{
	if (rq->curr == p)
		FUNC0(m, ">R");
	else
		FUNC0(m, " %c", FUNC8(p));

	FUNC0(m, "%15s %5d %9Ld.%06ld %9Ld %5d ",
		p->comm, FUNC7(p),
		FUNC1(p->se.vruntime),
		(long long)(p->nvcsw + p->nivcsw),
		p->prio);

	FUNC0(m, "%9Ld.%06ld %9Ld.%06ld %9Ld.%06ld",
		FUNC1(FUNC2(p->se.statistics.wait_sum)),
		FUNC1(p->se.sum_exec_runtime),
		FUNC1(FUNC2(p->se.statistics.sum_sleep_runtime)));

#ifdef CONFIG_NUMA_BALANCING
	SEQ_printf(m, " %d %d", task_node(p), task_numa_group_id(p));
#endif
#ifdef CONFIG_CGROUP_SCHED
	SEQ_printf(m, " %s", task_group_path(task_group(p)));
#endif

	FUNC0(m, "\n");
}