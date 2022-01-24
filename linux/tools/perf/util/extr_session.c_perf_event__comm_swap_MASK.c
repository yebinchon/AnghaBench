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
struct TYPE_2__ {int /*<<< orphan*/  comm; void* tid; void* pid; } ;
union perf_event {TYPE_1__ comm; } ;
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 void* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (union perf_event*,void*) ; 

__attribute__((used)) static void FUNC4(union perf_event *event, bool sample_id_all)
{
	event->comm.pid = FUNC1(event->comm.pid);
	event->comm.tid = FUNC1(event->comm.tid);

	if (sample_id_all) {
		void *data = &event->comm.comm;

		data += FUNC0(FUNC2(data) + 1, sizeof(u64));
		FUNC3(event, data);
	}
}