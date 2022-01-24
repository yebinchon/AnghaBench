#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int cpu; } ;
struct machine {int* current_tid; TYPE_1__* env; } ;
typedef  int pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  nr_cpus_online; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MAX_NR_CPUS ; 
 int* FUNC0 (int,int) ; 
 struct thread* FUNC1 (struct machine*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 

int FUNC5(struct machine *machine, int cpu, pid_t pid,
			     pid_t tid)
{
	struct thread *thread;
	int nr_cpus = FUNC2(machine->env->nr_cpus_online, MAX_NR_CPUS);

	if (cpu < 0)
		return -EINVAL;

	if (!machine->current_tid) {
		int i;

		machine->current_tid = FUNC0(nr_cpus, sizeof(pid_t));
		if (!machine->current_tid)
			return -ENOMEM;
		for (i = 0; i < nr_cpus; i++)
			machine->current_tid[i] = -1;
	}

	if (cpu >= nr_cpus) {
		FUNC3("Requested CPU %d too large. ", cpu);
		FUNC3("Consider raising MAX_NR_CPUS\n");
		return -EINVAL;
	}

	machine->current_tid[cpu] = tid;

	thread = FUNC1(machine, pid, tid);
	if (!thread)
		return -ENOMEM;

	thread->cpu = cpu;
	FUNC4(thread);

	return 0;
}