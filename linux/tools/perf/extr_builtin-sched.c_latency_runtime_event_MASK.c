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
typedef  void* u64 ;
typedef  void* u32 ;
struct work_atoms {int dummy; } ;
struct thread {int dummy; } ;
struct perf_sched {int /*<<< orphan*/  cmp_pid; int /*<<< orphan*/  atom_root; } ;
struct perf_sample {int cpu; void* time; } ;
struct machine {int dummy; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_CPUS ; 
 int /*<<< orphan*/  FUNC1 (struct work_atoms*,void* const,void*) ; 
 scalar_t__ FUNC2 (struct work_atoms*,char,void*) ; 
 struct thread* FUNC3 (struct machine*,int,void* const) ; 
 void* FUNC4 (struct evsel*,struct perf_sample*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 scalar_t__ FUNC7 (struct perf_sched*,struct thread*) ; 
 struct work_atoms* FUNC8 (int /*<<< orphan*/ *,struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct perf_sched *sched,
				 struct evsel *evsel,
				 struct perf_sample *sample,
				 struct machine *machine)
{
	const u32 pid	   = FUNC4(evsel, sample, "pid");
	const u64 runtime  = FUNC4(evsel, sample, "runtime");
	struct thread *thread = FUNC3(machine, -1, pid);
	struct work_atoms *atoms = FUNC8(&sched->atom_root, thread, &sched->cmp_pid);
	u64 timestamp = sample->time;
	int cpu = sample->cpu, err = -1;

	if (thread == NULL)
		return -1;

	FUNC0(cpu >= MAX_CPUS || cpu < 0);
	if (!atoms) {
		if (FUNC7(sched, thread))
			goto out_put;
		atoms = FUNC8(&sched->atom_root, thread, &sched->cmp_pid);
		if (!atoms) {
			FUNC5("in-event: Internal tree error");
			goto out_put;
		}
		if (FUNC2(atoms, 'R', timestamp))
			goto out_put;
	}

	FUNC1(atoms, runtime, timestamp);
	err = 0;
out_put:
	FUNC6(thread);
	return err;
}