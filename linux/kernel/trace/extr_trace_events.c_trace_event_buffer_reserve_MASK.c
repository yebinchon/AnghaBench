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
struct trace_event_file {int flags; struct trace_event_call* event_call; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct trace_event_call {TYPE_1__ event; } ;
struct trace_event_buffer {void* entry; int /*<<< orphan*/  event; int /*<<< orphan*/  pc; int /*<<< orphan*/  flags; int /*<<< orphan*/  buffer; struct trace_event_file* trace_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PREEMPTION ; 
 int EVENT_FILE_FL_PID_FILTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct trace_event_file*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct trace_event_file*) ; 

void *FUNC6(struct trace_event_buffer *fbuffer,
				 struct trace_event_file *trace_file,
				 unsigned long len)
{
	struct trace_event_call *event_call = trace_file->event_call;

	if ((trace_file->flags & EVENT_FILE_FL_PID_FILTER) &&
	    FUNC5(trace_file))
		return NULL;

	FUNC1(fbuffer->flags);
	fbuffer->pc = FUNC2();
	/*
	 * If CONFIG_PREEMPTION is enabled, then the tracepoint itself disables
	 * preemption (adding one to the preempt_count). Since we are
	 * interested in the preempt_count at the time the tracepoint was
	 * hit, we need to subtract one to offset the increment.
	 */
	if (FUNC0(CONFIG_PREEMPTION))
		fbuffer->pc--;
	fbuffer->trace_file = trace_file;

	fbuffer->event =
		FUNC4(&fbuffer->buffer, trace_file,
						event_call->event.type, len,
						fbuffer->flags, fbuffer->pc);
	if (!fbuffer->event)
		return NULL;

	fbuffer->entry = FUNC3(fbuffer->event);
	return fbuffer->entry;
}