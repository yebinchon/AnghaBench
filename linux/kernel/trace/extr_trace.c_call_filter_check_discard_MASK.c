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
struct trace_event_call {int flags; int /*<<< orphan*/  filter; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;

/* Variables and functions */
 int TRACE_EVENT_FL_FILTERED ; 
 int /*<<< orphan*/  FUNC0 (struct ring_buffer*,struct ring_buffer_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct trace_event_call *call, void *rec,
			      struct ring_buffer *buffer,
			      struct ring_buffer_event *event)
{
	if (FUNC2(call->flags & TRACE_EVENT_FL_FILTERED) &&
	    !FUNC1(call->filter, rec)) {
		FUNC0(buffer, event);
		return 1;
	}

	return 0;
}