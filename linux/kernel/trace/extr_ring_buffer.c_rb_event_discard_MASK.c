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
struct ring_buffer_event {int time_delta; int /*<<< orphan*/  type_len; scalar_t__* array; } ;

/* Variables and functions */
 scalar_t__ RB_EVNT_HDR_SIZE ; 
 int /*<<< orphan*/  RINGBUF_TYPE_PADDING ; 
 scalar_t__ FUNC0 (struct ring_buffer_event*) ; 
 scalar_t__ FUNC1 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC2 (struct ring_buffer_event*) ; 

__attribute__((used)) static inline void FUNC3(struct ring_buffer_event *event)
{
	if (FUNC0(event))
		event = FUNC2(event);

	/* array[0] holds the actual length for the discarded event */
	event->array[0] = FUNC1(event) - RB_EVNT_HDR_SIZE;
	event->type_len = RINGBUF_TYPE_PADDING;
	/* time delta must be non zero */
	if (!event->time_delta)
		event->time_delta = 1;
}