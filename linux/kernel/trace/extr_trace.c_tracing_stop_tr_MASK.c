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
struct trace_array {int flags; int /*<<< orphan*/  start_lock; TYPE_1__ trace_buffer; int /*<<< orphan*/  stop_count; } ;
struct ring_buffer {int dummy; } ;

/* Variables and functions */
 int TRACE_ARRAY_FL_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct ring_buffer*) ; 
 void FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct trace_array *tr)
{
	struct ring_buffer *buffer;
	unsigned long flags;

	/* If global, we need to also stop the max tracer */
	if (tr->flags & TRACE_ARRAY_FL_GLOBAL)
		return FUNC3();

	FUNC0(&tr->start_lock, flags);
	if (tr->stop_count++)
		goto out;

	buffer = tr->trace_buffer.buffer;
	if (buffer)
		FUNC2(buffer);

 out:
	FUNC1(&tr->start_lock, flags);
}