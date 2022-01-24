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
typedef  scalar_t__ u64 ;
struct ring_buffer_per_cpu {int /*<<< orphan*/  buffer; } ;
struct ring_buffer_event {unsigned int* array; scalar_t__ type_len; scalar_t__ time_delta; } ;
struct rb_event_info {unsigned int length; int add_timestamp; scalar_t__ delta; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_ALIGNMENT ; 
 scalar_t__ RB_EVNT_HDR_SIZE ; 
 scalar_t__ RB_LEN_TIME_EXTEND ; 
 unsigned int RB_MAX_SMALL_DATA ; 
 struct ring_buffer_event* FUNC1 (struct ring_buffer_event*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct ring_buffer_per_cpu *cpu_buffer,
		struct ring_buffer_event *event,
		struct rb_event_info *info)
{
	unsigned length = info->length;
	u64 delta = info->delta;

	/* Only a commit updates the timestamp */
	if (FUNC4(!FUNC2(cpu_buffer, event)))
		delta = 0;

	/*
	 * If we need to add a timestamp, then we
	 * add it to the start of the reserved space.
	 */
	if (FUNC4(info->add_timestamp)) {
		bool abs = FUNC3(cpu_buffer->buffer);

		event = FUNC1(event, info->delta, abs);
		length -= RB_LEN_TIME_EXTEND;
		delta = 0;
	}

	event->time_delta = delta;
	length -= RB_EVNT_HDR_SIZE;
	if (length > RB_MAX_SMALL_DATA) {
		event->type_len = 0;
		event->array[0] = length;
	} else
		event->type_len = FUNC0(length, RB_ALIGNMENT);
}