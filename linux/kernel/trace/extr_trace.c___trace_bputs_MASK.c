#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct bputs_entry {unsigned long ip; char const* str; } ;
struct TYPE_4__ {struct ring_buffer* buffer; } ;
struct TYPE_5__ {int trace_flags; TYPE_1__ trace_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_BPUTS ; 
 int TRACE_ITER_PRINTK ; 
 int /*<<< orphan*/  FUNC0 (struct ring_buffer*,struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC1 (struct ring_buffer*,int /*<<< orphan*/ ,int,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct ring_buffer*,unsigned long,int,int,int /*<<< orphan*/ *) ; 
 TYPE_2__ global_trace ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int FUNC4 () ; 
 struct bputs_entry* FUNC5 (struct ring_buffer_event*) ; 
 scalar_t__ tracing_disabled ; 
 scalar_t__ tracing_selftest_running ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(unsigned long ip, const char *str)
{
	struct ring_buffer_event *event;
	struct ring_buffer *buffer;
	struct bputs_entry *entry;
	unsigned long irq_flags;
	int size = sizeof(struct bputs_entry);
	int pc;

	if (!(global_trace.trace_flags & TRACE_ITER_PRINTK))
		return 0;

	pc = FUNC4();

	if (FUNC6(tracing_selftest_running || tracing_disabled))
		return 0;

	FUNC3(irq_flags);
	buffer = global_trace.trace_buffer.buffer;
	event = FUNC1(buffer, TRACE_BPUTS, size,
					    irq_flags, pc);
	if (!event)
		return 0;

	entry = FUNC5(event);
	entry->ip			= ip;
	entry->str			= str;

	FUNC0(buffer, event);
	FUNC2(&global_trace, buffer, irq_flags, 4, pc, NULL);

	return 1;
}