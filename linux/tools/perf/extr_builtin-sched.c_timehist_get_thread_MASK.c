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
struct thread {int dummy; } ;
struct perf_sched {scalar_t__ idle_hist; } ;
struct perf_sample {int /*<<< orphan*/  cpu; scalar_t__ tid; int /*<<< orphan*/  pid; } ;
struct machine {int dummy; } ;
struct idle_thread_runtime {struct thread* last_thread; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 struct thread* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct perf_sample*,struct evsel*) ; 
 struct thread* FUNC2 (struct machine*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct evsel*,struct perf_sample*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_sched*,struct idle_thread_runtime*,struct perf_sample*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_sched*,struct perf_sample*,struct evsel*,struct machine*) ; 
 struct idle_thread_runtime* FUNC8 (struct thread*) ; 

__attribute__((used)) static struct thread *FUNC9(struct perf_sched *sched,
					  struct perf_sample *sample,
					  struct machine *machine,
					  struct evsel *evsel)
{
	struct thread *thread;

	if (FUNC1(sample, evsel)) {
		thread = FUNC0(sample->cpu);
		if (thread == NULL)
			FUNC5("Failed to get idle thread for cpu %d.\n", sample->cpu);

	} else {
		/* there were samples with tid 0 but non-zero pid */
		thread = FUNC2(machine, sample->pid,
						 sample->tid ?: sample->pid);
		if (thread == NULL) {
			FUNC4("Failed to get thread for tid %d. skipping sample.\n",
				 sample->tid);
		}

		FUNC7(sched, sample, evsel, machine);
		if (sched->idle_hist) {
			struct thread *idle;
			struct idle_thread_runtime *itr;

			idle = FUNC0(sample->cpu);
			if (idle == NULL) {
				FUNC5("Failed to get idle thread for cpu %d.\n", sample->cpu);
				return NULL;
			}

			itr = FUNC8(idle);
			if (itr == NULL)
				return NULL;

			itr->last_thread = thread;

			/* copy task callchain when entering to idle */
			if (FUNC3(evsel, sample, "next_pid") == 0)
				FUNC6(sched, itr, sample);
		}
	}

	return thread;
}