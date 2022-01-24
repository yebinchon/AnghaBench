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
struct TYPE_2__ {int /*<<< orphan*/  filename; void* ino; void* min; void* maj; void* pgoff; void* len; void* start; void* tid; void* pid; } ;
union perf_event {TYPE_1__ mmap2; } ;
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (union perf_event*,void*) ; 

__attribute__((used)) static void FUNC5(union perf_event *event,
				  bool sample_id_all)
{
	event->mmap2.pid   = FUNC1(event->mmap2.pid);
	event->mmap2.tid   = FUNC1(event->mmap2.tid);
	event->mmap2.start = FUNC2(event->mmap2.start);
	event->mmap2.len   = FUNC2(event->mmap2.len);
	event->mmap2.pgoff = FUNC2(event->mmap2.pgoff);
	event->mmap2.maj   = FUNC1(event->mmap2.maj);
	event->mmap2.min   = FUNC1(event->mmap2.min);
	event->mmap2.ino   = FUNC2(event->mmap2.ino);

	if (sample_id_all) {
		void *data = &event->mmap2.filename;

		data += FUNC0(FUNC3(data) + 1, sizeof(u64));
		FUNC4(event, data);
	}
}