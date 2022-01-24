#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  buffer; } ;
struct trace_iterator {TYPE_3__ seq; int /*<<< orphan*/  ent; } ;
struct trace_event {TYPE_2__* funcs; } ;
struct trace_event_call {struct trace_event event; } ;
struct trace_event_buffer {int /*<<< orphan*/  entry; TYPE_1__* trace_file; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* trace ) (struct trace_iterator*,int /*<<< orphan*/ ,struct trace_event*) ;} ;
struct TYPE_5__ {struct trace_event_call* event_call; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_iterator*,int /*<<< orphan*/ ,struct trace_event*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tracepoint_iter_lock ; 
 struct trace_iterator* tracepoint_print_iter ; 

__attribute__((used)) static void FUNC7(struct trace_event_buffer *fbuffer)
{
	struct trace_event_call *event_call;
	struct trace_event *event;
	unsigned long flags;
	struct trace_iterator *iter = tracepoint_print_iter;

	/* We should never get here if iter is NULL */
	if (FUNC0(!iter))
		return;

	event_call = fbuffer->trace_file->event_call;
	if (!event_call || !event_call->event.funcs ||
	    !event_call->event.funcs->trace)
		return;

	event = &fbuffer->trace_file->event_call->event;

	FUNC2(&tracepoint_iter_lock, flags);
	FUNC5(&iter->seq);
	iter->ent = fbuffer->entry;
	event_call->event.funcs->trace(iter, 0, event);
	FUNC6(&iter->seq, 0);
	FUNC1("%s", iter->seq.buffer);

	FUNC3(&tracepoint_iter_lock, flags);
}