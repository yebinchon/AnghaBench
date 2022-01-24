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
typedef  int /*<<< orphan*/  u64 ;
struct trace_iterator {int /*<<< orphan*/  ent_size; TYPE_1__* trace_buffer; } ;
struct trace_entry {int dummy; } ;
struct ring_buffer_iter {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 struct trace_entry* FUNC0 (struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC2 (struct ring_buffer_iter*,int /*<<< orphan*/ *) ; 
 struct ring_buffer_event* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned long*) ; 
 struct ring_buffer_iter* FUNC4 (struct trace_iterator*,int) ; 

__attribute__((used)) static struct trace_entry *
FUNC5(struct trace_iterator *iter, int cpu, u64 *ts,
		unsigned long *lost_events)
{
	struct ring_buffer_event *event;
	struct ring_buffer_iter *buf_iter = FUNC4(iter, cpu);

	if (buf_iter)
		event = FUNC2(buf_iter, ts);
	else
		event = FUNC3(iter->trace_buffer->buffer, cpu, ts,
					 lost_events);

	if (event) {
		iter->ent_size = FUNC1(event);
		return FUNC0(event);
	}
	iter->ent_size = 0;
	return NULL;
}