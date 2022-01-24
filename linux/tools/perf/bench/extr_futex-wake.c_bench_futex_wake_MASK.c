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
struct timeval {unsigned int tv_usec; } ;
struct sigaction {int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_mask; } ;
struct perf_cpu_map {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUTEX_PRIVATE_FLAG ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ USEC_PER_MSEC ; 
 int /*<<< orphan*/  bench_futex_wake_usage ; 
 unsigned int bench_repeat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct perf_cpu_map*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ fshared ; 
 int /*<<< orphan*/  futex1 ; 
 int /*<<< orphan*/  futex_flag ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int ncpus ; 
 int nthreads ; 
 int nwakes ; 
 int /*<<< orphan*/  options ; 
 int FUNC9 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct perf_cpu_map* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  silent ; 
 int /*<<< orphan*/  thread_lock ; 
 int /*<<< orphan*/  thread_parent ; 
 int /*<<< orphan*/  thread_worker ; 
 scalar_t__ threads_starting ; 
 int /*<<< orphan*/  FUNC26 (struct timeval*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  toggle_done ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  waketime_stats ; 
 int /*<<< orphan*/  wakeup_stats ; 
 int /*<<< orphan*/ * worker ; 

int FUNC30(int argc, const char **argv)
{
	int ret = 0;
	unsigned int i, j;
	struct sigaction act;
	pthread_attr_t thread_attr;
	struct perf_cpu_map *cpu;

	argc = FUNC9(argc, argv, options, bench_futex_wake_usage, 0);
	if (argc) {
		FUNC28(bench_futex_wake_usage, options);
		FUNC3(EXIT_FAILURE);
	}

	cpu = FUNC10(NULL);
	if (!cpu)
		FUNC2(EXIT_FAILURE, "calloc");

	FUNC25(&act.sa_mask);
	act.sa_sigaction = toggle_done;
	FUNC24(SIGINT, &act, NULL);

	if (!nthreads)
		nthreads = ncpus;

	worker = FUNC1(nthreads, sizeof(*worker));
	if (!worker)
		FUNC2(EXIT_FAILURE, "calloc");

	if (!fshared)
		futex_flag = FUTEX_PRIVATE_FLAG;

	FUNC12("Run summary [PID %d]: blocking on %d threads (at [%s] futex %p), "
	       "waking up %d at a time.\n\n",
	       FUNC6(), nthreads, fshared ? "shared":"private",  &futex1, nwakes);

	FUNC8(&wakeup_stats);
	FUNC8(&waketime_stats);
	FUNC14(&thread_attr);
	FUNC21(&thread_lock, NULL);
	FUNC17(&thread_parent, NULL);
	FUNC17(&thread_worker, NULL);

	for (j = 0; j < bench_repeat && !done; j++) {
		unsigned int nwoken = 0;
		struct timeval start, end, runtime;

		/* create, launch & block all threads */
		FUNC0(worker, thread_attr, cpu);

		/* make sure all threads are already blocked */
		FUNC22(&thread_lock);
		while (threads_starting)
			FUNC18(&thread_parent, &thread_lock);
		FUNC15(&thread_worker);
		FUNC23(&thread_lock);

		FUNC29(100000);

		/* Ok, all threads are patiently blocked, start waking folks up */
		FUNC7(&start, NULL);
		while (nwoken != nthreads)
			nwoken += FUNC5(&futex1, nwakes, futex_flag);
		FUNC7(&end, NULL);
		FUNC26(&end, &start, &runtime);

		FUNC27(&wakeup_stats, nwoken);
		FUNC27(&waketime_stats, runtime.tv_usec);

		if (!silent) {
			FUNC12("[Run %d]: Wokeup %d of %d threads in %.4f ms\n",
			       j + 1, nwoken, nthreads, runtime.tv_usec / (double)USEC_PER_MSEC);
		}

		for (i = 0; i < nthreads; i++) {
			ret = FUNC19(worker[i], NULL);
			if (ret)
				FUNC2(EXIT_FAILURE, "pthread_join");
		}

	}

	/* cleanup & report results */
	FUNC16(&thread_parent);
	FUNC16(&thread_worker);
	FUNC20(&thread_lock);
	FUNC13(&thread_attr);

	FUNC11();

	FUNC4(worker);
	return ret;
}