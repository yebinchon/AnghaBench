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
struct TYPE_2__ {struct ring_buffer* buffer; } ;
struct trace_array {int flags; scalar_t__ stop_count; int /*<<< orphan*/  start_lock; TYPE_1__ trace_buffer; } ;
struct ring_buffer {int dummy; } ;

/* Variables and functions */
 int TRACE_ARRAY_FL_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ring_buffer*) ; 
 scalar_t__ tracing_disabled ; 
 void FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct trace_array *tr)
{
	struct ring_buffer *buffer;
	unsigned long flags;

	if (tracing_disabled)
		return;

	/* If global, we need to also start the max tracer */
	if (tr->flags & TRACE_ARRAY_FL_GLOBAL)
		return FUNC4();

	FUNC1(&tr->start_lock, flags);

	if (--tr->stop_count) {
		if (tr->stop_count < 0) {
			/* Someone screwed up their debugging */
			FUNC0(1);
			tr->stop_count = 0;
		}
		goto out;
	}

	buffer = tr->trace_buffer.buffer;
	if (buffer)
		FUNC3(buffer);

 out:
	FUNC2(&tr->start_lock, flags);
}