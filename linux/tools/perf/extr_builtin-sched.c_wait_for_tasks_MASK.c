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
typedef  int u64 ;
struct task_desc {scalar_t__ curr_event; int /*<<< orphan*/  sleep_sem; scalar_t__ cpu_usage; int /*<<< orphan*/  work_done_sem; int /*<<< orphan*/  ready_for_work; } ;
struct perf_sched {int cpu_usage; unsigned long nr_tasks; int runavg_cpu_usage; int replay_repeat; int parent_cpu_usage; int runavg_parent_cpu_usage; struct task_desc** tasks; int /*<<< orphan*/  start_work_mutex; int /*<<< orphan*/  work_done_wait_mutex; int /*<<< orphan*/  start_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct perf_sched *sched)
{
	u64 cpu_usage_0, cpu_usage_1;
	struct task_desc *task;
	unsigned long i, ret;

	sched->start_time = FUNC2();
	sched->cpu_usage = 0;
	FUNC4(&sched->work_done_wait_mutex);

	for (i = 0; i < sched->nr_tasks; i++) {
		task = sched->tasks[i];
		ret = FUNC6(&task->ready_for_work);
		FUNC0(ret);
		FUNC5(&task->ready_for_work, 0, 0);
	}
	ret = FUNC3(&sched->work_done_wait_mutex);
	FUNC0(ret);

	cpu_usage_0 = FUNC1();

	FUNC4(&sched->start_work_mutex);

	for (i = 0; i < sched->nr_tasks; i++) {
		task = sched->tasks[i];
		ret = FUNC6(&task->work_done_sem);
		FUNC0(ret);
		FUNC5(&task->work_done_sem, 0, 0);
		sched->cpu_usage += task->cpu_usage;
		task->cpu_usage = 0;
	}

	cpu_usage_1 = FUNC1();
	if (!sched->runavg_cpu_usage)
		sched->runavg_cpu_usage = sched->cpu_usage;
	sched->runavg_cpu_usage = (sched->runavg_cpu_usage * (sched->replay_repeat - 1) + sched->cpu_usage) / sched->replay_repeat;

	sched->parent_cpu_usage = cpu_usage_1 - cpu_usage_0;
	if (!sched->runavg_parent_cpu_usage)
		sched->runavg_parent_cpu_usage = sched->parent_cpu_usage;
	sched->runavg_parent_cpu_usage = (sched->runavg_parent_cpu_usage * (sched->replay_repeat - 1) +
					 sched->parent_cpu_usage)/sched->replay_repeat;

	ret = FUNC3(&sched->start_work_mutex);
	FUNC0(ret);

	for (i = 0; i < sched->nr_tasks; i++) {
		task = sched->tasks[i];
		FUNC5(&task->sleep_sem, 0, 0);
		task->curr_event = 0;
	}
}