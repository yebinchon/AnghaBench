#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t size; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int /*<<< orphan*/  filename; int /*<<< orphan*/  pid; int /*<<< orphan*/  pgoff; scalar_t__ len; scalar_t__ start; TYPE_2__ header; } ;
struct TYPE_4__ {int /*<<< orphan*/  misc; } ;
union perf_event {TYPE_3__ mmap; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  u64 ;
struct perf_tool {int dummy; } ;
struct maps {int dummy; } ;
struct map_groups {struct maps maps; } ;
struct map {int /*<<< orphan*/  pgoff; scalar_t__ start; scalar_t__ end; } ;
struct machine {int id_hdr_size; int /*<<< orphan*/  pid; struct map_groups kmaps; } ;
struct kmap {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  perf_event__handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  PERF_RECORD_MISC_GUEST_KERNEL ; 
 int /*<<< orphan*/  PERF_RECORD_MISC_KERNEL ; 
 int /*<<< orphan*/  PERF_RECORD_MMAP ; 
 int /*<<< orphan*/  FUNC1 (struct map*) ; 
 int /*<<< orphan*/  FUNC2 (union perf_event*) ; 
 scalar_t__ FUNC3 (struct machine*) ; 
 struct kmap* FUNC4 (struct map*) ; 
 struct map* FUNC5 (struct map*) ; 
 struct map* FUNC6 (struct maps*) ; 
 int /*<<< orphan*/  FUNC7 (union perf_event*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC8 (struct perf_tool*,union perf_event*,struct machine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 union perf_event* FUNC12 (int) ; 

int FUNC13(struct perf_tool *tool,
				       perf_event__handler_t process,
				       struct machine *machine)
{
	int rc = 0;
	struct map *pos;
	struct map_groups *kmaps = &machine->kmaps;
	struct maps *maps = &kmaps->maps;
	union perf_event *event = FUNC12(sizeof(event->mmap) +
					 machine->id_hdr_size);

	if (!event) {
		FUNC9("Not enough memory synthesizing mmap event "
			 "for extra kernel maps\n");
		return -1;
	}

	for (pos = FUNC6(maps); pos; pos = FUNC5(pos)) {
		struct kmap *kmap;
		size_t size;

		if (!FUNC1(pos))
			continue;

		kmap = FUNC4(pos);

		size = sizeof(event->mmap) - sizeof(event->mmap.filename) +
		       FUNC0(FUNC11(kmap->name) + 1, sizeof(u64)) +
		       machine->id_hdr_size;

		FUNC7(event, 0, size);

		event->mmap.header.type = PERF_RECORD_MMAP;

		/*
		 * kernel uses 0 for user space maps, see kernel/perf_event.c
		 * __perf_event_mmap
		 */
		if (FUNC3(machine))
			event->header.misc = PERF_RECORD_MISC_KERNEL;
		else
			event->header.misc = PERF_RECORD_MISC_GUEST_KERNEL;

		event->mmap.header.size = size;

		event->mmap.start = pos->start;
		event->mmap.len   = pos->end - pos->start;
		event->mmap.pgoff = pos->pgoff;
		event->mmap.pid   = machine->pid;

		FUNC10(event->mmap.filename, kmap->name, PATH_MAX);

		if (FUNC8(tool, event, machine,
						   process) != 0) {
			rc = -1;
			break;
		}
	}

	FUNC2(event);
	return rc;
}