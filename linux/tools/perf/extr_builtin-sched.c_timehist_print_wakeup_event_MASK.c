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
typedef  int /*<<< orphan*/  tstr ;
struct thread {int dummy; } ;
struct perf_sched {char* max_cpu; scalar_t__ show_cpu_visual; } ;
struct perf_sample {int cpu; int /*<<< orphan*/  time; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct machine {int dummy; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 char* comm_width ; 
 struct thread* FUNC0 (struct machine*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (struct thread*) ; 
 scalar_t__ FUNC3 (struct perf_sched*,struct thread*,struct evsel*,struct perf_sample*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5(struct perf_sched *sched,
					struct evsel *evsel,
					struct perf_sample *sample,
					struct machine *machine,
					struct thread *awakened)
{
	struct thread *thread;
	char tstr[64];

	thread = FUNC0(machine, sample->pid, sample->tid);
	if (thread == NULL)
		return;

	/* show wakeup unless both awakee and awaker are filtered */
	if (FUNC3(sched, thread, evsel, sample) &&
	    FUNC3(sched, awakened, evsel, sample)) {
		return;
	}

	FUNC4(sample->time, tstr, sizeof(tstr));
	FUNC1("%15s [%04d] ", tstr, sample->cpu);
	if (sched->show_cpu_visual)
		FUNC1(" %*s ", sched->max_cpu + 1, "");

	FUNC1(" %-*s ", comm_width, FUNC2(thread));

	/* dt spacer */
	FUNC1("  %9s  %9s  %9s ", "", "", "");

	FUNC1("awakened: %s", FUNC2(awakened));

	FUNC1("\n");
}