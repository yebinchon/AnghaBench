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
typedef  int /*<<< orphan*/  va_list ;
struct task_struct {int dummy; } ;
struct kthread_worker {unsigned int flags; struct task_struct* task; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct kthread_worker* FUNC0 (struct task_struct*) ; 
 struct kthread_worker* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 
 int NUMA_NO_NODE ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,struct kthread_worker*,int,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct kthread_worker*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kthread_worker*) ; 
 int /*<<< orphan*/  kthread_worker_fn ; 
 struct kthread_worker* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 

struct kthread_worker *
FUNC10(int cpu, unsigned int flags,
			const char namefmt[], va_list args)
{
	struct kthread_worker *worker;
	struct task_struct *task;
	int node = NUMA_NO_NODE;

	worker = FUNC8(sizeof(*worker), GFP_KERNEL);
	if (!worker)
		return FUNC1(-ENOMEM);

	FUNC7(worker);

	if (cpu >= 0)
		node = FUNC4(cpu);

	task = FUNC3(kthread_worker_fn, worker,
						node, namefmt, args);
	if (FUNC2(task))
		goto fail_task;

	if (cpu >= 0)
		FUNC6(task, cpu);

	worker->flags = flags;
	worker->task = task;
	FUNC9(task);
	return worker;

fail_task:
	FUNC5(worker);
	return FUNC0(task);
}