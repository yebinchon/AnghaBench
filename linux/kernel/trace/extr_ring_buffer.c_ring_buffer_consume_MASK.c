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
struct ring_buffer_per_cpu {scalar_t__ lost_events; } ;
struct ring_buffer_event {scalar_t__ type_len; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 scalar_t__ RINGBUF_TYPE_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ring_buffer_per_cpu*) ; 
 struct ring_buffer_event* FUNC6 (struct ring_buffer_per_cpu*,int /*<<< orphan*/ *,unsigned long*) ; 
 int FUNC7 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct ring_buffer_per_cpu*,int) ; 

struct ring_buffer_event *
FUNC9(struct ring_buffer *buffer, int cpu, u64 *ts,
		    unsigned long *lost_events)
{
	struct ring_buffer_per_cpu *cpu_buffer;
	struct ring_buffer_event *event = NULL;
	unsigned long flags;
	bool dolock;

 again:
	/* might be called in atomic */
	FUNC3();

	if (!FUNC0(cpu, buffer->cpumask))
		goto out;

	cpu_buffer = buffer->buffers[cpu];
	FUNC2(flags);
	dolock = FUNC7(cpu_buffer);

	event = FUNC6(cpu_buffer, ts, lost_events);
	if (event) {
		cpu_buffer->lost_events = 0;
		FUNC5(cpu_buffer);
	}

	FUNC8(cpu_buffer, dolock);
	FUNC1(flags);

 out:
	FUNC4();

	if (event && event->type_len == RINGBUF_TYPE_PADDING)
		goto again;

	return event;
}