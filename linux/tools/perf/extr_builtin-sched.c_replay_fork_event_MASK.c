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
struct TYPE_2__ {int /*<<< orphan*/  ptid; int /*<<< orphan*/  ppid; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
union perf_event {TYPE_1__ fork; } ;
struct thread {int tid; } ;
struct perf_sched {int dummy; } ;
struct machine {int dummy; } ;

/* Variables and functions */
 struct thread* FUNC0 (struct machine*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct thread*,struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_sched*,int,char*) ; 
 char* FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC6(struct perf_sched *sched,
			     union perf_event *event,
			     struct machine *machine)
{
	struct thread *child, *parent;

	child = FUNC0(machine, event->fork.pid,
					event->fork.tid);
	parent = FUNC0(machine, event->fork.ppid,
					 event->fork.ptid);

	if (child == NULL || parent == NULL) {
		FUNC1("thread does not exist on fork event: child %p, parent %p\n",
				 child, parent);
		goto out_put;
	}

	if (verbose > 0) {
		FUNC2("fork event\n");
		FUNC2("... parent: %s/%d\n", FUNC4(parent), parent->tid);
		FUNC2("...  child: %s/%d\n", FUNC4(child), child->tid);
	}

	FUNC3(sched, parent->tid, FUNC4(parent));
	FUNC3(sched, child->tid, FUNC4(child));
out_put:
	FUNC5(child);
	FUNC5(parent);
	return 0;
}