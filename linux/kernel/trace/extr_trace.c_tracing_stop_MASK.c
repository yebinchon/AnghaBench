#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ring_buffer {int dummy; } ;
struct TYPE_5__ {struct ring_buffer* buffer; } ;
struct TYPE_4__ {struct ring_buffer* buffer; } ;
struct TYPE_6__ {int /*<<< orphan*/  start_lock; int /*<<< orphan*/  max_lock; TYPE_2__ max_buffer; TYPE_1__ trace_buffer; int /*<<< orphan*/  stop_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__ global_trace ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct ring_buffer*) ; 

void FUNC5(void)
{
	struct ring_buffer *buffer;
	unsigned long flags;

	FUNC2(&global_trace.start_lock, flags);
	if (global_trace.stop_count++)
		goto out;

	/* Prevent the buffers from switching */
	FUNC0(&global_trace.max_lock);

	buffer = global_trace.trace_buffer.buffer;
	if (buffer)
		FUNC4(buffer);

#ifdef CONFIG_TRACER_MAX_TRACE
	buffer = global_trace.max_buffer.buffer;
	if (buffer)
		ring_buffer_record_disable(buffer);
#endif

	FUNC1(&global_trace.max_lock);

 out:
	FUNC3(&global_trace.start_lock, flags);
}