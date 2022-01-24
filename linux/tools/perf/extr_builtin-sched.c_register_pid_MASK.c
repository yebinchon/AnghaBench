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
struct task_desc {unsigned long pid; size_t nr; int /*<<< orphan*/  comm; } ;
struct perf_sched {size_t nr_tasks; struct task_desc** tasks; struct task_desc** pid_to_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_PID ; 
 int /*<<< orphan*/  FUNC1 (struct perf_sched*,struct task_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct task_desc** FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,unsigned long,char const*) ; 
 void* FUNC4 (struct task_desc**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC6 (char*,int*) ; 
 scalar_t__ verbose ; 
 struct task_desc* FUNC7 (int) ; 

__attribute__((used)) static struct task_desc *FUNC8(struct perf_sched *sched,
				      unsigned long pid, const char *comm)
{
	struct task_desc *task;
	static int pid_max;

	if (sched->pid_to_task == NULL) {
		if (FUNC6("kernel/pid_max", &pid_max) < 0)
			pid_max = MAX_PID;
		FUNC0((sched->pid_to_task = FUNC2(pid_max, sizeof(struct task_desc *))) == NULL);
	}
	if (pid >= (unsigned long)pid_max) {
		FUNC0((sched->pid_to_task = FUNC4(sched->pid_to_task, (pid + 1) *
			sizeof(struct task_desc *))) == NULL);
		while (pid >= (unsigned long)pid_max)
			sched->pid_to_task[pid_max++] = NULL;
	}

	task = sched->pid_to_task[pid];

	if (task)
		return task;

	task = FUNC7(sizeof(*task));
	task->pid = pid;
	task->nr = sched->nr_tasks;
	FUNC5(task->comm, comm);
	/*
	 * every task starts in sleeping state - this gets ignored
	 * if there's no wakeup pointing to this sleep state:
	 */
	FUNC1(sched, task, 0, 0);

	sched->pid_to_task[pid] = task;
	sched->nr_tasks++;
	sched->tasks = FUNC4(sched->tasks, sched->nr_tasks * sizeof(struct task_desc *));
	FUNC0(!sched->tasks);
	sched->tasks[task->nr] = task;

	if (verbose > 0)
		FUNC3("registered task #%ld, PID %ld (%s)\n", sched->nr_tasks, pid, comm);

	return task;
}