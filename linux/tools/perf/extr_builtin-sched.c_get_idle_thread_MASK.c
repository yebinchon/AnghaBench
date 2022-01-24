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
struct thread {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int idle_max_cpu ; 
 struct thread** idle_threads ; 
 scalar_t__ FUNC1 (struct thread*) ; 
 void* FUNC2 (struct thread**,int) ; 
 struct thread* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct thread *FUNC4(int cpu)
{
	/*
	 * expand/allocate array of pointers to local thread
	 * structs if needed
	 */
	if ((cpu >= idle_max_cpu) || (idle_threads == NULL)) {
		int i, j = FUNC0(cpu+1);
		void *p;

		p = FUNC2(idle_threads, j * sizeof(struct thread *));
		if (!p)
			return NULL;

		idle_threads = (struct thread **) p;
		for (i = idle_max_cpu; i < j; ++i)
			idle_threads[i] = NULL;

		idle_max_cpu = j;
	}

	/* allocate a new thread struct if needed */
	if (idle_threads[cpu] == NULL) {
		idle_threads[cpu] = FUNC3(0, 0);

		if (idle_threads[cpu]) {
			if (FUNC1(idle_threads[cpu]) < 0)
				return NULL;
		}
	}

	return idle_threads[cpu];
}