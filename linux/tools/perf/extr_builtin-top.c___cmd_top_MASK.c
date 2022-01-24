#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct sched_param {scalar_t__ sched_priority; } ;
struct record_opts {scalar_t__ overwrite; int /*<<< orphan*/  target; scalar_t__ record_namespaces; } ;
struct TYPE_19__ {int /*<<< orphan*/  cond; } ;
struct TYPE_16__ {int namespace_events; } ;
struct TYPE_15__ {int /*<<< orphan*/  objdump_path; } ;
struct perf_top {int nr_threads_synthesize; scalar_t__ samples; TYPE_6__ qe; TYPE_11__* evlist; scalar_t__ realtime_prio; TYPE_7__* session; struct record_opts record_opts; TYPE_3__ tool; TYPE_2__ annotation_opts; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  errbuf ;
struct TYPE_21__ {scalar_t__ socket; } ;
struct TYPE_17__ {int /*<<< orphan*/  host; } ;
struct TYPE_14__ {int /*<<< orphan*/  env; } ;
struct TYPE_20__ {TYPE_11__* evlist; TYPE_4__ machines; TYPE_1__ header; } ;
struct TYPE_18__ {int /*<<< orphan*/  threads; } ;
struct TYPE_13__ {TYPE_5__ core; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  callchain_param ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  display_thread ; 
 int /*<<< orphan*/  display_thread_tui ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*) ; 
 int FUNC2 (TYPE_11__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_top*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  perf_env ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  perf_event__process ; 
 int FUNC7 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct record_opts*) ; 
 TYPE_9__ perf_hpp_list ; 
 scalar_t__ FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct perf_top*) ; 
 int /*<<< orphan*/  FUNC13 (struct perf_top*) ; 
 int FUNC14 (struct perf_top*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  process_thread ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct perf_top*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ resize ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 char* FUNC20 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 scalar_t__ use_browser ; 

__attribute__((used)) static int FUNC23(struct perf_top *top)
{
	struct record_opts *opts = &top->record_opts;
	pthread_t thread, thread_process;
	int ret;

	if (!top->annotation_opts.objdump_path) {
		ret = FUNC5(&top->session->header.env,
					       &top->annotation_opts.objdump_path);
		if (ret)
			return ret;
	}

	ret = FUNC0(&callchain_param);
	if (ret)
		return ret;

	if (FUNC8(top->session) < 0)
		return ret;

	if (top->nr_threads_synthesize > 1)
		FUNC10();

	FUNC3(top);

	if (opts->record_namespaces)
		top->tool.namespace_events = true;

	ret = FUNC7(top->session, perf_event__process,
						&top->session->machines.host,
						&top->record_opts);
	if (ret < 0)
		FUNC15("Couldn't synthesize BPF events: Pre-existing BPF programs won't have symbols resolved.\n");

	FUNC4(&top->session->machines.host, &opts->target,
				    top->evlist->core.threads, false,
				    top->nr_threads_synthesize);

	if (top->nr_threads_synthesize > 1)
		FUNC11();

	if (perf_hpp_list.socket) {
		ret = FUNC6(&perf_env);
		if (ret < 0) {
			char errbuf[BUFSIZ];
			const char *err = FUNC20(-ret, errbuf, sizeof(errbuf));

			FUNC22("Could not read the CPU topology map: %s\n", err);
			return ret;
		}
	}

	ret = FUNC14(top);
	if (ret)
		return ret;

	top->session->evlist = top->evlist;
	FUNC9(top->session);

	/*
	 * When perf is starting the traced process, all the events (apart from
	 * group members) have enable_on_exec=1 set, so don't spoil it by
	 * prematurely enabling them.
	 *
	 * XXX 'top' still doesn't start workloads like record, trace, but should,
	 * so leave the check here.
	 */
        if (!FUNC21(&opts->target))
		FUNC1(top->evlist);

	ret = -1;
	if (FUNC17(&thread_process, NULL, process_thread, top)) {
		FUNC22("Could not create process thread.\n");
		return ret;
	}

	if (FUNC17(&thread, NULL, (use_browser > 0 ? display_thread_tui :
							    display_thread), top)) {
		FUNC22("Could not create display thread.\n");
		goto out_join_thread;
	}

	if (top->realtime_prio) {
		struct sched_param param;

		param.sched_priority = top->realtime_prio;
		if (FUNC19(0, SCHED_FIFO, &param)) {
			FUNC22("Could not set realtime priority.\n");
			goto out_join;
		}
	}

	/* Wait for a minimal set of events before starting the snapshot */
	FUNC2(top->evlist, 100);

	FUNC12(top);

	while (!done) {
		u64 hits = top->samples;

		FUNC12(top);

		if (opts->overwrite || (hits == top->samples))
			ret = FUNC2(top->evlist, 100);

		if (resize) {
			FUNC13(top);
			resize = 0;
		}
	}

	ret = 0;
out_join:
	FUNC18(thread, NULL);
out_join_thread:
	FUNC16(&top->qe.cond);
	FUNC18(thread_process, NULL);
	return ret;
}