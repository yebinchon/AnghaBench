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
struct TYPE_3__ {int /*<<< orphan*/  comm; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct TYPE_4__ {int misc; } ;
union perf_event {TYPE_1__ comm; TYPE_2__ header; } ;
struct thread {int dummy; } ;
struct perf_sample {int /*<<< orphan*/  time; } ;
struct machine {int comm_exec; } ;

/* Variables and functions */
 int PERF_RECORD_MISC_COMM_EXEC ; 
 scalar_t__ FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ dump_trace ; 
 struct thread* FUNC2 (struct machine*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 

int FUNC5(struct machine *machine, union perf_event *event,
				struct perf_sample *sample)
{
	struct thread *thread = FUNC2(machine,
							event->comm.pid,
							event->comm.tid);
	bool exec = event->header.misc & PERF_RECORD_MISC_COMM_EXEC;
	int err = 0;

	if (exec)
		machine->comm_exec = true;

	if (dump_trace)
		FUNC3(event, stdout);

	if (thread == NULL ||
	    FUNC0(thread, event->comm.comm, sample->time, exec)) {
		FUNC1("problem processing PERF_RECORD_COMM, skipping event.\n");
		err = -1;
	}

	FUNC4(thread);

	return err;
}