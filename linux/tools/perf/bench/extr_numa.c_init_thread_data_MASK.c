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
struct thread_data {int /*<<< orphan*/  bind_cpumask; int /*<<< orphan*/  bind_node; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int nr_tasks; int nr_cpus; } ;
struct TYPE_4__ {TYPE_1__ p; struct thread_data* threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 TYPE_2__* g ; 
 struct thread_data* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void)
{
	ssize_t size = sizeof(*g->threads)*g->p.nr_tasks;
	int t;

	g->threads = FUNC2(size);

	for (t = 0; t < g->p.nr_tasks; t++) {
		struct thread_data *td = g->threads + t;
		int cpu;

		/* Allow all nodes by default: */
		td->bind_node = NUMA_NO_NODE;

		/* Allow all CPUs by default: */
		FUNC1(&td->bind_cpumask);
		for (cpu = 0; cpu < g->p.nr_cpus; cpu++)
			FUNC0(cpu, &td->bind_cpumask);
	}
}