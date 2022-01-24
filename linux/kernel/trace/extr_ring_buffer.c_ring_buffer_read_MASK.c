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
struct ring_buffer_per_cpu {int /*<<< orphan*/  reader_lock; } ;
struct ring_buffer_iter {struct ring_buffer_per_cpu* cpu_buffer; } ;
struct ring_buffer_event {scalar_t__ type_len; } ;

/* Variables and functions */
 scalar_t__ RINGBUF_TYPE_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct ring_buffer_iter*) ; 
 struct ring_buffer_event* FUNC3 (struct ring_buffer_iter*,int /*<<< orphan*/ *) ; 

struct ring_buffer_event *
FUNC4(struct ring_buffer_iter *iter, u64 *ts)
{
	struct ring_buffer_event *event;
	struct ring_buffer_per_cpu *cpu_buffer = iter->cpu_buffer;
	unsigned long flags;

	FUNC0(&cpu_buffer->reader_lock, flags);
 again:
	event = FUNC3(iter, ts);
	if (!event)
		goto out;

	if (event->type_len == RINGBUF_TYPE_PADDING)
		goto again;

	FUNC2(iter);
 out:
	FUNC1(&cpu_buffer->reader_lock, flags);

	return event;
}