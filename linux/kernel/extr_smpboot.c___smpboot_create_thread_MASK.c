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
struct task_struct {int dummy; } ;
struct smpboot_thread_data {unsigned int cpu; struct smp_hotplug_thread* ht; } ;
struct smp_hotplug_thread {int /*<<< orphan*/  (* create ) (unsigned int) ;int /*<<< orphan*/  store; int /*<<< orphan*/  thread_comm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  TASK_PARKED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct smpboot_thread_data*) ; 
 struct task_struct* FUNC6 (int /*<<< orphan*/ ,struct smpboot_thread_data*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 struct smpboot_thread_data* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct task_struct** FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  smpboot_thread_fn ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct smp_hotplug_thread *ht, unsigned int cpu)
{
	struct task_struct *tsk = *FUNC9(ht->store, cpu);
	struct smpboot_thread_data *td;

	if (tsk)
		return 0;

	td = FUNC8(sizeof(*td), GFP_KERNEL, FUNC3(cpu));
	if (!td)
		return -ENOMEM;
	td->cpu = cpu;
	td->ht = ht;

	tsk = FUNC6(smpboot_thread_fn, td, cpu,
				    ht->thread_comm);
	if (FUNC0(tsk)) {
		FUNC5(td);
		return FUNC1(tsk);
	}
	/*
	 * Park the thread so that it could start right on the CPU
	 * when it is available.
	 */
	FUNC7(tsk);
	FUNC4(tsk);
	*FUNC9(ht->store, cpu) = tsk;
	if (ht->create) {
		/*
		 * Make sure that the task has actually scheduled out
		 * into park position, before calling the create
		 * callback. At least the migration thread callback
		 * requires that the task is off the runqueue.
		 */
		if (!FUNC11(tsk, TASK_PARKED))
			FUNC2(1);
		else
			ht->create(cpu);
	}
	return 0;
}