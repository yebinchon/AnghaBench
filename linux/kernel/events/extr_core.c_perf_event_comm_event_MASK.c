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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {int size; } ;
struct TYPE_5__ {TYPE_1__ header; } ;
struct perf_comm_event {char* comm; unsigned int comm_size; TYPE_2__ event_id; TYPE_3__* task; } ;
typedef  int /*<<< orphan*/  comm ;
struct TYPE_6__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,int) ; 
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  perf_event_comm_output ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct perf_comm_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct perf_comm_event *comm_event)
{
	char comm[TASK_COMM_LEN];
	unsigned int size;

	FUNC1(comm, 0, sizeof(comm));
	FUNC3(comm, comm_event->task->comm, sizeof(comm));
	size = FUNC0(FUNC4(comm)+1, sizeof(u64));

	comm_event->comm = comm;
	comm_event->comm_size = size;

	comm_event->event_id.header.size = sizeof(comm_event->event_id) + size;

	FUNC2(perf_event_comm_output,
		       comm_event,
		       NULL);
}