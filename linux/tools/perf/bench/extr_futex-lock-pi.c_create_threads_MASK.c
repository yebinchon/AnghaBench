#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct worker {int /*<<< orphan*/  thread; } ;
struct perf_cpu_map {unsigned int nr; int /*<<< orphan*/ * map; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  cpu_set_t ;
struct TYPE_3__ {unsigned int tid; int /*<<< orphan*/ * futex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  global_futex ; 
 scalar_t__ multi ; 
 unsigned int nthreads ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 unsigned int threads_starting ; 
 TYPE_1__* worker ; 
 int /*<<< orphan*/  workerfn ; 

__attribute__((used)) static void FUNC6(struct worker *w, pthread_attr_t thread_attr,
			   struct perf_cpu_map *cpu)
{
	cpu_set_t cpuset;
	unsigned int i;

	threads_starting = nthreads;

	for (i = 0; i < nthreads; i++) {
		worker[i].tid = i;

		if (multi) {
			worker[i].futex = FUNC2(1, sizeof(u_int32_t));
			if (!worker[i].futex)
				FUNC3(EXIT_FAILURE, "calloc");
		} else
			worker[i].futex = &global_futex;

		FUNC1(&cpuset);
		FUNC0(cpu->map[i % cpu->nr], &cpuset);

		if (FUNC4(&thread_attr, sizeof(cpu_set_t), &cpuset))
			FUNC3(EXIT_FAILURE, "pthread_attr_setaffinity_np");

		if (FUNC5(&w[i].thread, &thread_attr, workerfn, &worker[i]))
			FUNC3(EXIT_FAILURE, "pthread_create");
	}
}