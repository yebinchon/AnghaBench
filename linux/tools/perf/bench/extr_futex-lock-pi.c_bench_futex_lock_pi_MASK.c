#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sigaction {int /*<<< orphan*/  (* sa_sigaction ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  sa_mask; } ;
struct perf_cpu_map {int nr; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_7__ {unsigned long tv_sec; } ;
struct TYPE_6__ {unsigned long ops; int tid; int futex; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUTEX_PRIVATE_FLAG ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  bench_futex_lock_pi_usage ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct perf_cpu_map*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  fshared ; 
 int /*<<< orphan*/  futex_flag ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ multi ; 
 int nsecs ; 
 int nthreads ; 
 int /*<<< orphan*/  options ; 
 int FUNC8 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct perf_cpu_map* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 TYPE_2__ runtime ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  silent ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  start ; 
 int /*<<< orphan*/  thread_lock ; 
 int /*<<< orphan*/  thread_parent ; 
 int /*<<< orphan*/  thread_worker ; 
 int threads_starting ; 
 int /*<<< orphan*/  throughput_stats ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* worker ; 
 int /*<<< orphan*/  FUNC29 (int*) ; 

int FUNC30(int argc, const char **argv)
{
	int ret = 0;
	unsigned int i;
	struct sigaction act;
	pthread_attr_t thread_attr;
	struct perf_cpu_map *cpu;

	argc = FUNC8(argc, argv, options, bench_futex_lock_pi_usage, 0);
	if (argc)
		goto err;

	cpu = FUNC9(NULL);
	if (!cpu)
		FUNC2(EXIT_FAILURE, "calloc");

	FUNC24(&act.sa_mask);
	act.sa_sigaction = toggle_done;
	FUNC23(SIGINT, &act, NULL);

	if (!nthreads)
		nthreads = cpu->nr;

	worker = FUNC0(nthreads, sizeof(*worker));
	if (!worker)
		FUNC2(EXIT_FAILURE, "calloc");

	if (!fshared)
		futex_flag = FUTEX_PRIVATE_FLAG;

	FUNC11("Run summary [PID %d]: %d threads doing pi lock/unlock pairing for %d secs.\n\n",
	       FUNC5(), nthreads, nsecs);

	FUNC7(&throughput_stats);
	FUNC20(&thread_lock, NULL);
	FUNC16(&thread_parent, NULL);
	FUNC16(&thread_worker, NULL);

	threads_starting = nthreads;
	FUNC13(&thread_attr);
	FUNC6(&start, NULL);

	FUNC1(worker, thread_attr, cpu);
	FUNC12(&thread_attr);

	FUNC21(&thread_lock);
	while (threads_starting)
		FUNC17(&thread_parent, &thread_lock);
	FUNC14(&thread_worker);
	FUNC22(&thread_lock);

	FUNC25(nsecs);
	FUNC26(0, NULL, NULL);

	for (i = 0; i < nthreads; i++) {
		ret = FUNC18(worker[i].thread, NULL);
		if (ret)
			FUNC2(EXIT_FAILURE, "pthread_join");
	}

	/* cleanup & report results */
	FUNC15(&thread_parent);
	FUNC15(&thread_worker);
	FUNC19(&thread_lock);

	for (i = 0; i < nthreads; i++) {
		unsigned long t = worker[i].ops/runtime.tv_sec;

		FUNC27(&throughput_stats, t);
		if (!silent)
			FUNC11("[thread %3d] futex: %p [ %ld ops/sec ]\n",
			       worker[i].tid, worker[i].futex, t);

		if (multi)
			FUNC29(&worker[i].futex);
	}

	FUNC10();

	FUNC4(worker);
	return ret;
err:
	FUNC28(bench_futex_lock_pi_usage, options);
	FUNC3(EXIT_FAILURE);
}