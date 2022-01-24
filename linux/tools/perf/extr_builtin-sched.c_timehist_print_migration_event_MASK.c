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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  tstr ;
struct thread {int dummy; } ;
struct perf_sched {scalar_t__ max_cpu; scalar_t__ show_cpu_visual; scalar_t__ summary_only; } ;
struct perf_sample {int cpu; int /*<<< orphan*/  time; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct machine {int dummy; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 char* comm_width ; 
 struct thread* FUNC0 (struct machine*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct evsel*,struct perf_sample*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (struct thread*) ; 
 scalar_t__ FUNC4 (struct perf_sched*,struct thread*,struct evsel*,struct perf_sample*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC6(struct perf_sched *sched,
					struct evsel *evsel,
					struct perf_sample *sample,
					struct machine *machine,
					struct thread *migrated)
{
	struct thread *thread;
	char tstr[64];
	u32 max_cpus = sched->max_cpu + 1;
	u32 ocpu, dcpu;

	if (sched->summary_only)
		return;

	max_cpus = sched->max_cpu + 1;
	ocpu = FUNC1(evsel, sample, "orig_cpu");
	dcpu = FUNC1(evsel, sample, "dest_cpu");

	thread = FUNC0(machine, sample->pid, sample->tid);
	if (thread == NULL)
		return;

	if (FUNC4(sched, thread, evsel, sample) &&
	    FUNC4(sched, migrated, evsel, sample)) {
		return;
	}

	FUNC5(sample->time, tstr, sizeof(tstr));
	FUNC2("%15s [%04d] ", tstr, sample->cpu);

	if (sched->show_cpu_visual) {
		u32 i;
		char c;

		FUNC2("  ");
		for (i = 0; i < max_cpus; ++i) {
			c = (i == sample->cpu) ? 'm' : ' ';
			FUNC2("%c", c);
		}
		FUNC2("  ");
	}

	FUNC2(" %-*s ", comm_width, FUNC3(thread));

	/* dt spacer */
	FUNC2("  %9s  %9s  %9s ", "", "", "");

	FUNC2("migrated: %s", FUNC3(migrated));
	FUNC2(" cpu %d => %d", ocpu, dcpu);

	FUNC2("\n");
}