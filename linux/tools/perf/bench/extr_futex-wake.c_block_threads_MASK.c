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
struct perf_cpu_map {unsigned int nr; int /*<<< orphan*/ * map; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned int nthreads ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int threads_starting ; 
 int /*<<< orphan*/  workerfn ; 

__attribute__((used)) static void FUNC5(pthread_t *w,
			  pthread_attr_t thread_attr, struct perf_cpu_map *cpu)
{
	cpu_set_t cpuset;
	unsigned int i;

	threads_starting = nthreads;

	/* create and block all threads */
	for (i = 0; i < nthreads; i++) {
		FUNC1(&cpuset);
		FUNC0(cpu->map[i % cpu->nr], &cpuset);

		if (FUNC3(&thread_attr, sizeof(cpu_set_t), &cpuset))
			FUNC2(EXIT_FAILURE, "pthread_attr_setaffinity_np");

		if (FUNC4(&w[i], &thread_attr, workerfn, NULL))
			FUNC2(EXIT_FAILURE, "pthread_create");
	}
}