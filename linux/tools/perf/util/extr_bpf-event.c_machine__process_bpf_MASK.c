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
struct TYPE_2__ {int type; } ;
union perf_event {TYPE_1__ bpf; } ;
struct perf_sample {int dummy; } ;
struct machine {int dummy; } ;

/* Variables and functions */
#define  PERF_BPF_EVENT_PROG_LOAD 129 
#define  PERF_BPF_EVENT_PROG_UNLOAD 128 
 scalar_t__ dump_trace ; 
 int FUNC0 (struct machine*,union perf_event*,struct perf_sample*) ; 
 int /*<<< orphan*/  FUNC1 (union perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC3(struct machine *machine, union perf_event *event,
			 struct perf_sample *sample)
{
	if (dump_trace)
		FUNC1(event, stdout);

	switch (event->bpf.type) {
	case PERF_BPF_EVENT_PROG_LOAD:
		return FUNC0(machine, event, sample);

	case PERF_BPF_EVENT_PROG_UNLOAD:
		/*
		 * Do not free bpf_prog_info and btf of the program here,
		 * as annotation still need them. They will be freed at
		 * the end of the session.
		 */
		break;
	default:
		FUNC2("unexpected bpf event type of %d\n", event->bpf.type);
		break;
	}
	return 0;
}