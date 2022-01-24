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
typedef  int /*<<< orphan*/  u64 ;
struct ring_buffer_per_cpu {int dummy; } ;
struct ring_buffer_event {scalar_t__ type_len; } ;
struct ring_buffer {int /*<<< orphan*/  cpumask; struct ring_buffer_per_cpu** buffers; } ;

/* Variables and functions */
 scalar_t__ RINGBUF_TYPE_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ring_buffer_per_cpu*) ; 
 struct ring_buffer_event* FUNC4 (struct ring_buffer_per_cpu*,int /*<<< orphan*/ *,unsigned long*) ; 
 int FUNC5 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct ring_buffer_per_cpu*,int) ; 

struct ring_buffer_event *
FUNC7(struct ring_buffer *buffer, int cpu, u64 *ts,
		 unsigned long *lost_events)
{
	struct ring_buffer_per_cpu *cpu_buffer = buffer->buffers[cpu];
	struct ring_buffer_event *event;
	unsigned long flags;
	bool dolock;

	if (!FUNC0(cpu, buffer->cpumask))
		return NULL;

 again:
	FUNC2(flags);
	dolock = FUNC5(cpu_buffer);
	event = FUNC4(cpu_buffer, ts, lost_events);
	if (event && event->type_len == RINGBUF_TYPE_PADDING)
		FUNC3(cpu_buffer);
	FUNC6(cpu_buffer, dolock);
	FUNC1(flags);

	if (event && event->type_len == RINGBUF_TYPE_PADDING)
		goto again;

	return event;
}