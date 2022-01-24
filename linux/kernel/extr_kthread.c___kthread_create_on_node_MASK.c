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
struct sched_param {int /*<<< orphan*/  sched_priority; } ;
struct kthread_create_info {int (* threadfn ) (void*) ;int node; struct task_struct* result; int /*<<< orphan*/ * done; int /*<<< orphan*/  list; void* data; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  SCHED_NORMAL ; 
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  cpu_all_mask ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC3 (struct kthread_create_info*) ; 
 struct kthread_create_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kthread_create_list ; 
 int /*<<< orphan*/  kthread_create_lock ; 
 int /*<<< orphan*/  kthreadd_task ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int /*<<< orphan*/ ,struct sched_param const*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

struct task_struct *FUNC17(int (*threadfn)(void *data),
						    void *data, int node,
						    const char namefmt[],
						    va_list args)
{
	FUNC0(done);
	struct task_struct *task;
	struct kthread_create_info *create = FUNC4(sizeof(*create),
						     GFP_KERNEL);

	if (!create)
		return FUNC1(-ENOMEM);
	create->threadfn = threadfn;
	create->data = data;
	create->node = node;
	create->done = &done;

	FUNC9(&kthread_create_lock);
	FUNC5(&create->list, &kthread_create_list);
	FUNC10(&kthread_create_lock);

	FUNC15(kthreadd_task);
	/*
	 * Wait for completion in killable state, for I might be chosen by
	 * the OOM killer while kthreadd is trying to allocate memory for
	 * new kernel thread.
	 */
	if (FUNC11(FUNC14(&done))) {
		/*
		 * If I was SIGKILLed before kthreadd (or new kernel thread)
		 * calls complete(), leave the cleanup of this structure to
		 * that thread.
		 */
		if (FUNC16(&create->done, NULL))
			return FUNC1(-EINTR);
		/*
		 * kthreadd (or new kernel thread) will call complete()
		 * shortly.
		 */
		FUNC13(&done);
	}
	task = create->result;
	if (!FUNC2(task)) {
		static const struct sched_param param = { .sched_priority = 0 };
		char name[TASK_COMM_LEN];

		/*
		 * task is already visible to other tasks, so updating
		 * COMM must be protected.
		 */
		FUNC12(name, sizeof(name), namefmt, args);
		FUNC8(task, name);
		/*
		 * root may have changed our (kthreadd's) priority or CPU mask.
		 * The kernel thread should not inherit these properties.
		 */
		FUNC6(task, SCHED_NORMAL, &param);
		FUNC7(task, cpu_all_mask);
	}
	FUNC3(create);
	return task;
}