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
struct task_desc {int /*<<< orphan*/  thread; scalar_t__ curr_event; int /*<<< orphan*/  work_done_sem; int /*<<< orphan*/  ready_for_work; int /*<<< orphan*/  sleep_sem; } ;
struct sched_thread_parms {int /*<<< orphan*/  fd; struct perf_sched* sched; struct task_desc* task; } ;
struct perf_sched {unsigned long nr_tasks; struct task_desc** tasks; int /*<<< orphan*/  work_done_wait_mutex; int /*<<< orphan*/  start_work_mutex; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PTHREAD_STACK_MIN ; 
 struct sched_thread_parms* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sched_thread_parms*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_sched*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_func ; 

__attribute__((used)) static void FUNC9(struct perf_sched *sched)
{
	struct task_desc *task;
	pthread_attr_t attr;
	unsigned long i;
	int err;

	err = FUNC3(&attr);
	FUNC0(err);
	err = FUNC4(&attr,
			(size_t) FUNC2(16 * 1024, PTHREAD_STACK_MIN));
	FUNC0(err);
	err = FUNC6(&sched->start_work_mutex);
	FUNC0(err);
	err = FUNC6(&sched->work_done_wait_mutex);
	FUNC0(err);
	for (i = 0; i < sched->nr_tasks; i++) {
		struct sched_thread_parms *parms = FUNC1(sizeof(*parms));
		FUNC0(parms == NULL);
		parms->task = task = sched->tasks[i];
		parms->sched = sched;
		parms->fd = FUNC7(sched, i);
		FUNC8(&task->sleep_sem, 0, 0);
		FUNC8(&task->ready_for_work, 0, 0);
		FUNC8(&task->work_done_sem, 0, 0);
		task->curr_event = 0;
		err = FUNC5(&task->thread, &attr, thread_func, parms);
		FUNC0(err);
	}
}