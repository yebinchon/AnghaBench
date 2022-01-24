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
typedef  union perf_event {int dummy; } perf_event ;
struct switch_tracking {int* tids; int cycles_before_comm_1; int cycles_between_comm_2_and_comm_3; int cycles_after_comm_4; scalar_t__* comm_seen; struct evsel* cycles_evsel; struct evsel* switch_evsel; } ;
struct perf_sample {int cpu; int /*<<< orphan*/  id; } ;
struct evsel {int dummy; } ;
struct evlist {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 int FUNC0 (struct switch_tracking*,int) ; 
 struct evsel* FUNC1 (struct evlist*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct evlist*,union perf_event*,struct perf_sample*) ; 
 int FUNC3 (struct evsel*,struct perf_sample*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(struct evlist *evlist,
				union perf_event *event,
				struct switch_tracking *switch_tracking)
{
	struct perf_sample sample;
	struct evsel *evsel;
	pid_t next_tid, prev_tid;
	int cpu, err;

	if (FUNC2(evlist, event, &sample)) {
		FUNC4("perf_evlist__parse_sample failed\n");
		return -1;
	}

	evsel = FUNC1(evlist, sample.id);
	if (evsel == switch_tracking->switch_evsel) {
		next_tid = FUNC3(evsel, &sample, "next_pid");
		prev_tid = FUNC3(evsel, &sample, "prev_pid");
		cpu = sample.cpu;
		FUNC5("sched_switch: cpu: %d prev_tid %d next_tid %d\n",
			  cpu, prev_tid, next_tid);
		err = FUNC0(switch_tracking, cpu);
		if (err)
			return err;
		/*
		 * Check for no missing sched_switch events i.e. that the
		 * evsel->core.system_wide flag has worked.
		 */
		if (switch_tracking->tids[cpu] != -1 &&
		    switch_tracking->tids[cpu] != prev_tid) {
			FUNC4("Missing sched_switch events\n");
			return -1;
		}
		switch_tracking->tids[cpu] = next_tid;
	}

	if (evsel == switch_tracking->cycles_evsel) {
		FUNC5("cycles event\n");
		if (!switch_tracking->comm_seen[0])
			switch_tracking->cycles_before_comm_1 = 1;
		if (switch_tracking->comm_seen[1] &&
		    !switch_tracking->comm_seen[2])
			switch_tracking->cycles_between_comm_2_and_comm_3 = 1;
		if (switch_tracking->comm_seen[3])
			switch_tracking->cycles_after_comm_4 = 1;
	}

	return 0;
}