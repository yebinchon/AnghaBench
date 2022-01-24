#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size; void* type; } ;
struct TYPE_7__ {int /*<<< orphan*/  filename; int /*<<< orphan*/  pid; scalar_t__ len; scalar_t__ start; TYPE_2__ header; } ;
struct TYPE_5__ {int /*<<< orphan*/  misc; void* type; } ;
union perf_event {TYPE_3__ mmap; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  u64 ;
struct perf_tool {int dummy; } ;
struct maps {int dummy; } ;
struct map {TYPE_4__* dso; scalar_t__ start; scalar_t__ end; } ;
struct machine {int id_hdr_size; int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/  perf_event__handler_t ;
struct TYPE_8__ {scalar_t__ long_name_len; int /*<<< orphan*/  long_name; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  PERF_RECORD_MISC_GUEST_KERNEL ; 
 int /*<<< orphan*/  PERF_RECORD_MISC_KERNEL ; 
 void* PERF_RECORD_MMAP ; 
 int /*<<< orphan*/  FUNC1 (struct map*) ; 
 int /*<<< orphan*/  FUNC2 (union perf_event*) ; 
 scalar_t__ FUNC3 (struct machine*) ; 
 struct maps* FUNC4 (struct machine*) ; 
 struct map* FUNC5 (struct map*) ; 
 struct map* FUNC6 (struct maps*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct perf_tool*,union perf_event*,struct machine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 union perf_event* FUNC11 (int) ; 

int FUNC12(struct perf_tool *tool, perf_event__handler_t process,
				   struct machine *machine)
{
	int rc = 0;
	struct map *pos;
	struct maps *maps = FUNC4(machine);
	union perf_event *event = FUNC11((sizeof(event->mmap) +
					  machine->id_hdr_size));
	if (event == NULL) {
		FUNC10("Not enough memory synthesizing mmap event "
			 "for kernel modules\n");
		return -1;
	}

	event->header.type = PERF_RECORD_MMAP;

	/*
	 * kernel uses 0 for user space maps, see kernel/perf_event.c
	 * __perf_event_mmap
	 */
	if (FUNC3(machine))
		event->header.misc = PERF_RECORD_MISC_KERNEL;
	else
		event->header.misc = PERF_RECORD_MISC_GUEST_KERNEL;

	for (pos = FUNC6(maps); pos; pos = FUNC5(pos)) {
		size_t size;

		if (!FUNC1(pos))
			continue;

		size = FUNC0(pos->dso->long_name_len + 1, sizeof(u64));
		event->mmap.header.type = PERF_RECORD_MMAP;
		event->mmap.header.size = (sizeof(event->mmap) -
				        (sizeof(event->mmap.filename) - size));
		FUNC8(event->mmap.filename + size, 0, machine->id_hdr_size);
		event->mmap.header.size += machine->id_hdr_size;
		event->mmap.start = pos->start;
		event->mmap.len   = pos->end - pos->start;
		event->mmap.pid   = machine->pid;

		FUNC7(event->mmap.filename, pos->dso->long_name,
		       pos->dso->long_name_len + 1);
		if (FUNC9(tool, event, machine, process) != 0) {
			rc = -1;
			break;
		}
	}

	FUNC2(event);
	return rc;
}