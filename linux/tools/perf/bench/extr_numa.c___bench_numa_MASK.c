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
typedef  double u64 ;
typedef  int /*<<< orphan*/  tname ;
struct timeval {double tv_sec; double tv_usec; } ;
struct thread_data {double runtime_ns; double speed_gbs; double system_time_ns; double user_time_ns; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_3__ {int nr_proc; double nr_tasks; int show_details; int nr_threads; scalar_t__ measure_convergence; scalar_t__ serialize_startup; } ;
struct TYPE_4__ {double nr_tasks_started; double bytes_done; TYPE_1__ p; struct thread_data* threads; int /*<<< orphan*/  startup_done_mutex; int /*<<< orphan*/  start_work_mutex; } ;

/* Variables and functions */
 scalar_t__ BENCH_FORMAT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 double NSEC_PER_SEC ; 
 double NSEC_PER_USEC ; 
 int /*<<< orphan*/  USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ bench_format ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 TYPE_2__* g ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 double FUNC11 (double,double) ; 
 int /*<<< orphan*/  FUNC12 (char const*,double,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC16 (struct timeval*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 scalar_t__* FUNC21 (int) ; 

__attribute__((used)) static int FUNC22(const char *name)
{
	struct timeval start, stop, diff;
	u64 runtime_ns_min, runtime_ns_sum;
	pid_t *pids, pid, wpid;
	double delta_runtime;
	double runtime_avg;
	double runtime_sec_max;
	double runtime_sec_min;
	int wait_stat;
	double bytes;
	int i, t, p;

	if (FUNC9())
		return -1;

	pids = FUNC21(g->p.nr_proc * sizeof(*pids));
	pid = -1;

	/* All threads try to acquire it, this way we can wait for them to start up: */
	FUNC13(&g->start_work_mutex);

	if (g->p.serialize_startup) {
		FUNC17(" #\n");
		FUNC17(" # Startup synchronization: ..."); FUNC5(stdout);
	}

	FUNC8(&start, NULL);

	for (i = 0; i < g->p.nr_proc; i++) {
		pid = FUNC6();
		FUNC3(" # process %2d: PID %d\n", i, pid);

		FUNC0(pid < 0);
		if (!pid) {
			/* Child process: */
			FUNC20(i);

			FUNC4(0);
		}
		pids[i] = pid;

	}
	/* Wait for all the threads to start up: */
	while (g->nr_tasks_started != g->p.nr_tasks)
		FUNC18(USEC_PER_MSEC);

	FUNC0(g->nr_tasks_started != g->p.nr_tasks);

	if (g->p.serialize_startup) {
		double startup_sec;

		FUNC13(&g->startup_done_mutex);

		/* This will start all threads: */
		FUNC14(&g->start_work_mutex);

		/* This mutex is locked - the last started thread will wake us: */
		FUNC13(&g->startup_done_mutex);

		FUNC8(&stop, NULL);

		FUNC16(&stop, &start, &diff);

		startup_sec = diff.tv_sec * NSEC_PER_SEC;
		startup_sec += diff.tv_usec * NSEC_PER_USEC;
		startup_sec /= NSEC_PER_SEC;

		FUNC17(" threads initialized in %.6f seconds.\n", startup_sec);
		FUNC17(" #\n");

		start = stop;
		FUNC14(&g->startup_done_mutex);
	} else {
		FUNC8(&start, NULL);
	}

	/* Parent process: */


	for (i = 0; i < g->p.nr_proc; i++) {
		wpid = FUNC19(pids[i], &wait_stat, 0);
		FUNC0(wpid < 0);
		FUNC0(!FUNC1(wait_stat));

	}

	runtime_ns_sum = 0;
	runtime_ns_min = -1LL;

	for (t = 0; t < g->p.nr_tasks; t++) {
		u64 thread_runtime_ns = g->threads[t].runtime_ns;

		runtime_ns_sum += thread_runtime_ns;
		runtime_ns_min = FUNC11(thread_runtime_ns, runtime_ns_min);
	}

	FUNC8(&stop, NULL);
	FUNC16(&stop, &start, &diff);

	FUNC0(bench_format != BENCH_FORMAT_DEFAULT);

	FUNC17("\n ###\n");
	FUNC17("\n");

	runtime_sec_max = diff.tv_sec * NSEC_PER_SEC;
	runtime_sec_max += diff.tv_usec * NSEC_PER_USEC;
	runtime_sec_max /= NSEC_PER_SEC;

	runtime_sec_min = runtime_ns_min / NSEC_PER_SEC;

	bytes = g->bytes_done;
	runtime_avg = (double)runtime_ns_sum / g->p.nr_tasks / NSEC_PER_SEC;

	if (g->p.measure_convergence) {
		FUNC12(name, runtime_sec_max,
			"secs,", "NUMA-convergence-latency", "secs latency to NUMA-converge");
	}

	FUNC12(name, runtime_sec_max,
		"secs,", "runtime-max/thread",	"secs slowest (max) thread-runtime");

	FUNC12(name, runtime_sec_min,
		"secs,", "runtime-min/thread",	"secs fastest (min) thread-runtime");

	FUNC12(name, runtime_avg,
		"secs,", "runtime-avg/thread",	"secs average thread-runtime");

	delta_runtime = (runtime_sec_max - runtime_sec_min)/2.0;
	FUNC12(name, delta_runtime / runtime_sec_max * 100.0,
		"%,", "spread-runtime/thread",	"% difference between max/avg runtime");

	FUNC12(name, bytes / g->p.nr_tasks / 1e9,
		"GB,", "data/thread",		"GB data processed, per thread");

	FUNC12(name, bytes / 1e9,
		"GB,", "data-total",		"GB data processed, total");

	FUNC12(name, runtime_sec_max * NSEC_PER_SEC / (bytes / g->p.nr_tasks),
		"nsecs,", "runtime/byte/thread","nsecs/byte/thread runtime");

	FUNC12(name, bytes / g->p.nr_tasks / 1e9 / runtime_sec_max,
		"GB/sec,", "thread-speed",	"GB/sec/thread speed");

	FUNC12(name, bytes / runtime_sec_max / 1e9,
		"GB/sec,", "total-speed",	"GB/sec total speed");

	if (g->p.show_details >= 2) {
		char tname[14 + 2 * 10 + 1];
		struct thread_data *td;
		for (p = 0; p < g->p.nr_proc; p++) {
			for (t = 0; t < g->p.nr_threads; t++) {
				FUNC10(tname, 0, sizeof(tname));
				td = g->threads + p*g->p.nr_threads + t;
				FUNC15(tname, sizeof(tname), "process%d:thread%d", p, t);
				FUNC12(tname, td->speed_gbs,
					"GB/sec",	"thread-speed", "GB/sec/thread speed");
				FUNC12(tname, td->system_time_ns / NSEC_PER_SEC,
					"secs",	"thread-system-time", "system CPU time/thread");
				FUNC12(tname, td->user_time_ns / NSEC_PER_SEC,
					"secs",	"thread-user-time", "user CPU time/thread");
			}
		}
	}

	FUNC7(pids);

	FUNC2();

	return 0;
}