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
struct perf_cpu_map {int nr; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUTEX_PRIVATE_FLAG ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ USEC_PER_MSEC ; 
 int /*<<< orphan*/  bench_futex_requeue_usage ; 
 unsigned int bench_repeat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct perf_cpu_map*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ fshared ; 
 int /*<<< orphan*/  futex1 ; 
 int /*<<< orphan*/  futex2 ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  futex_flag ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int nrequeue ; 
 int nthreads ; 
 int /*<<< orphan*/  options ; 
 int FUNC10 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct perf_cpu_map* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  requeued_stats ; 
 int /*<<< orphan*/  requeuetime_stats ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  silent ; 
 int /*<<< orphan*/  thread_lock ; 
 int /*<<< orphan*/  thread_parent ; 
 int /*<<< orphan*/  thread_worker ; 
 scalar_t__ threads_starting ; 
 int /*<<< orphan*/  FUNC27 (struct timeval*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  toggle_done ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (char*,unsigned int,int) ; 
 int /*<<< orphan*/ * worker ; 

int FUNC32(int argc, const char **argv)
{
	int ret = 0;
	unsigned int i, j;
	struct sigaction act;
	pthread_attr_t thread_attr;
	struct perf_cpu_map *cpu;

	argc = FUNC10(argc, argv, options, bench_futex_requeue_usage, 0);
	if (argc)
		goto err;

	cpu = FUNC11(NULL);
	if (!cpu)
		FUNC2(EXIT_FAILURE, "cpu_map__new");

	FUNC26(&act.sa_mask);
	act.sa_sigaction = toggle_done;
	FUNC25(SIGINT, &act, NULL);

	if (!nthreads)
		nthreads = cpu->nr;

	worker = FUNC1(nthreads, sizeof(*worker));
	if (!worker)
		FUNC2(EXIT_FAILURE, "calloc");

	if (!fshared)
		futex_flag = FUTEX_PRIVATE_FLAG;

	if (nrequeue > nthreads)
		nrequeue = nthreads;

	FUNC13("Run summary [PID %d]: Requeuing %d threads (from [%s] %p to %p), "
	       "%d at a time.\n\n",  FUNC7(), nthreads,
	       fshared ? "shared":"private", &futex1, &futex2, nrequeue);

	FUNC9(&requeued_stats);
	FUNC9(&requeuetime_stats);
	FUNC15(&thread_attr);
	FUNC22(&thread_lock, NULL);
	FUNC18(&thread_parent, NULL);
	FUNC18(&thread_worker, NULL);

	for (j = 0; j < bench_repeat && !done; j++) {
		unsigned int nrequeued = 0;
		struct timeval start, end, runtime;

		/* create, launch & block all threads */
		FUNC0(worker, thread_attr, cpu);

		/* make sure all threads are already blocked */
		FUNC23(&thread_lock);
		while (threads_starting)
			FUNC19(&thread_parent, &thread_lock);
		FUNC16(&thread_worker);
		FUNC24(&thread_lock);

		FUNC30(100000);

		/* Ok, all threads are patiently blocked, start requeueing */
		FUNC8(&start, NULL);
		while (nrequeued < nthreads) {
			/*
			 * Do not wakeup any tasks blocked on futex1, allowing
			 * us to really measure futex_wait functionality.
			 */
			nrequeued += FUNC5(&futex1, 0, &futex2, 0,
						       nrequeue, futex_flag);
		}

		FUNC8(&end, NULL);
		FUNC27(&end, &start, &runtime);

		FUNC28(&requeued_stats, nrequeued);
		FUNC28(&requeuetime_stats, runtime.tv_usec);

		if (!silent) {
			FUNC13("[Run %d]: Requeued %d of %d threads in %.4f ms\n",
			       j + 1, nrequeued, nthreads, runtime.tv_usec / (double)USEC_PER_MSEC);
		}

		/* everybody should be blocked on futex2, wake'em up */
		nrequeued = FUNC6(&futex2, nrequeued, futex_flag);
		if (nthreads != nrequeued)
			FUNC31("couldn't wakeup all tasks (%d/%d)", nrequeued, nthreads);

		for (i = 0; i < nthreads; i++) {
			ret = FUNC20(worker[i], NULL);
			if (ret)
				FUNC2(EXIT_FAILURE, "pthread_join");
		}
	}

	/* cleanup & report results */
	FUNC17(&thread_parent);
	FUNC17(&thread_worker);
	FUNC21(&thread_lock);
	FUNC14(&thread_attr);

	FUNC12();

	FUNC4(worker);
	return ret;
err:
	FUNC29(bench_futex_requeue_usage, options);
	FUNC3(EXIT_FAILURE);
}