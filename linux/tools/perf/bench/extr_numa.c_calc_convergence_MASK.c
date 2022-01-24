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
struct thread_data {int curr_cpu; unsigned int loops_done; } ;
struct TYPE_3__ {int nr_nodes; int nr_tasks; int nr_proc; scalar_t__ measure_convergence; int /*<<< orphan*/  show_convergence; } ;
struct TYPE_4__ {int all_converged; int stop_work; TYPE_1__ p; struct thread_data* threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_NR_NODES ; 
 double NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int) ; 
 TYPE_2__* g ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int,int) ; 
 void* FUNC5 (int,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void FUNC8(double runtime_ns_max, double *convergence)
{
	unsigned int loops_done_min, loops_done_max;
	int process_groups;
	int nodes[MAX_NR_NODES];
	int distance;
	int nr_min;
	int nr_max;
	int strong;
	int sum;
	int nr;
	int node;
	int cpu;
	int t;

	if (!g->p.show_convergence && !g->p.measure_convergence)
		return;

	for (node = 0; node < g->p.nr_nodes; node++)
		nodes[node] = 0;

	loops_done_min = -1;
	loops_done_max = 0;

	for (t = 0; t < g->p.nr_tasks; t++) {
		struct thread_data *td = g->threads + t;
		unsigned int loops_done;

		cpu = td->curr_cpu;

		/* Not all threads have written it yet: */
		if (cpu < 0)
			continue;

		node = FUNC6(cpu);

		nodes[node]++;

		loops_done = td->loops_done;
		loops_done_min = FUNC5(loops_done, loops_done_min);
		loops_done_max = FUNC4(loops_done, loops_done_max);
	}

	nr_max = 0;
	nr_min = g->p.nr_tasks;
	sum = 0;

	for (node = 0; node < g->p.nr_nodes; node++) {
		if (!FUNC3(node))
			continue;
		nr = nodes[node];
		nr_min = FUNC5(nr, nr_min);
		nr_max = FUNC4(nr, nr_max);
		sum += nr;
	}
	FUNC0(nr_min > nr_max);

	FUNC0(sum > g->p.nr_tasks);

	if (0 && (sum < g->p.nr_tasks))
		return;

	/*
	 * Count the number of distinct process groups present
	 * on nodes - when we are converged this will decrease
	 * to g->p.nr_proc:
	 */
	process_groups = 0;

	for (node = 0; node < g->p.nr_nodes; node++) {
		int processes;

		if (!FUNC3(node))
			continue;
		processes = FUNC2(node);
		nr = nodes[node];
		FUNC7(" %2d/%-2d", nr, processes);

		process_groups += processes;
	}

	distance = nr_max - nr_min;

	FUNC7(" [%2d/%-2d]", distance, process_groups);

	FUNC7(" l:%3d-%-3d (%3d)",
		loops_done_min, loops_done_max, loops_done_max-loops_done_min);

	if (loops_done_min && loops_done_max) {
		double skew = 1.0 - (double)loops_done_min/loops_done_max;

		FUNC7(" [%4.1f%%]", skew * 100.0);
	}

	FUNC1(&strong);

	if (strong && process_groups == g->p.nr_proc) {
		if (!*convergence) {
			*convergence = runtime_ns_max;
			FUNC7(" (%6.1fs converged)\n", *convergence / NSEC_PER_SEC);
			if (g->p.measure_convergence) {
				g->all_converged = true;
				g->stop_work = true;
			}
		}
	} else {
		if (*convergence) {
			FUNC7(" (%6.1fs de-converged)", runtime_ns_max / NSEC_PER_SEC);
			*convergence = 0;
		}
		FUNC7("\n");
	}
}