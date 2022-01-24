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
struct worker {int nr; unsigned int tid; unsigned long ops; int /*<<< orphan*/ * futex; int /*<<< orphan*/  thread; int /*<<< orphan*/ * map; } ;
struct sigaction {int /*<<< orphan*/  (* sa_sigaction ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  sa_mask; } ;
struct perf_cpu_map {int nr; unsigned int tid; unsigned long ops; int /*<<< orphan*/ * futex; int /*<<< orphan*/  thread; int /*<<< orphan*/ * map; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  cpu_set_t ;
struct TYPE_2__ {unsigned long tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUTEX_PRIVATE_FLAG ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  bench_futex_hash_usage ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct worker*) ; 
 scalar_t__ fshared ; 
 int /*<<< orphan*/  futex_flag ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int nfutexes ; 
 int nsecs ; 
 int nthreads ; 
 int /*<<< orphan*/  options ; 
 int FUNC9 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct worker* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 TYPE_1__ runtime ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  silent ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  start ; 
 int /*<<< orphan*/  thread_lock ; 
 int /*<<< orphan*/  thread_parent ; 
 int /*<<< orphan*/  thread_worker ; 
 int threads_starting ; 
 int /*<<< orphan*/  throughput_stats ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  workerfn ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ **) ; 

int FUNC33(int argc, const char **argv)
{
	int ret = 0;
	cpu_set_t cpuset;
	struct sigaction act;
	unsigned int i;
	pthread_attr_t thread_attr;
	struct worker *worker = NULL;
	struct perf_cpu_map *cpu;

	argc = FUNC9(argc, argv, options, bench_futex_hash_usage, 0);
	if (argc) {
		FUNC31(bench_futex_hash_usage, options);
		FUNC4(EXIT_FAILURE);
	}

	cpu = FUNC10(NULL);
	if (!cpu)
		goto errmem;

	FUNC27(&act.sa_mask);
	act.sa_sigaction = toggle_done;
	FUNC26(SIGINT, &act, NULL);

	if (!nthreads) /* default to the number of CPUs */
		nthreads = cpu->nr;

	worker = FUNC2(nthreads, sizeof(*worker));
	if (!worker)
		goto errmem;

	if (!fshared)
		futex_flag = FUTEX_PRIVATE_FLAG;

	FUNC12("Run summary [PID %d]: %d threads, each operating on %d [%s] futexes for %d secs.\n\n",
	       FUNC6(), nthreads, nfutexes, fshared ? "shared":"private", nsecs);

	FUNC8(&throughput_stats);
	FUNC23(&thread_lock, NULL);
	FUNC18(&thread_parent, NULL);
	FUNC18(&thread_worker, NULL);

	threads_starting = nthreads;
	FUNC14(&thread_attr);
	FUNC7(&start, NULL);
	for (i = 0; i < nthreads; i++) {
		worker[i].tid = i;
		worker[i].futex = FUNC2(nfutexes, sizeof(*worker[i].futex));
		if (!worker[i].futex)
			goto errmem;

		FUNC1(&cpuset);
		FUNC0(cpu->map[i % cpu->nr], &cpuset);

		ret = FUNC15(&thread_attr, sizeof(cpu_set_t), &cpuset);
		if (ret)
			FUNC3(EXIT_FAILURE, "pthread_attr_setaffinity_np");

		ret = FUNC20(&worker[i].thread, &thread_attr, workerfn,
				     (void *)(struct worker *) &worker[i]);
		if (ret)
			FUNC3(EXIT_FAILURE, "pthread_create");

	}
	FUNC13(&thread_attr);

	FUNC24(&thread_lock);
	while (threads_starting)
		FUNC19(&thread_parent, &thread_lock);
	FUNC16(&thread_worker);
	FUNC25(&thread_lock);

	FUNC28(nsecs);
	FUNC29(0, NULL, NULL);

	for (i = 0; i < nthreads; i++) {
		ret = FUNC21(worker[i].thread, NULL);
		if (ret)
			FUNC3(EXIT_FAILURE, "pthread_join");
	}

	/* cleanup & report results */
	FUNC17(&thread_parent);
	FUNC17(&thread_worker);
	FUNC22(&thread_lock);

	for (i = 0; i < nthreads; i++) {
		unsigned long t = worker[i].ops/runtime.tv_sec;
		FUNC30(&throughput_stats, t);
		if (!silent) {
			if (nfutexes == 1)
				FUNC12("[thread %2d] futex: %p [ %ld ops/sec ]\n",
				       worker[i].tid, worker[i].futex[0], t);
			else
				FUNC12("[thread %2d] futexes: %p ... %p [ %ld ops/sec ]\n",
				       worker[i].tid, worker[i].futex[0],
				       worker[i].futex[nfutexes-1], t);
		}

		FUNC32(&worker[i].futex);
	}

	FUNC11();

	FUNC5(worker);
	FUNC5(cpu);
	return ret;
errmem:
	FUNC3(EXIT_FAILURE, "calloc");
}