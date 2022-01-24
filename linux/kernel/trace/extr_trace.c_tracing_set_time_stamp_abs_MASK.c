#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ buffer; } ;
struct TYPE_3__ {scalar_t__ buffer; } ;
struct trace_array {TYPE_2__ max_buffer; TYPE_1__ trace_buffer; scalar_t__ time_stamp_abs_ref; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  trace_types_lock ; 

int FUNC4(struct trace_array *tr, bool abs)
{
	int ret = 0;

	FUNC1(&trace_types_lock);

	if (abs && tr->time_stamp_abs_ref++)
		goto out;

	if (!abs) {
		if (FUNC0(!tr->time_stamp_abs_ref)) {
			ret = -EINVAL;
			goto out;
		}

		if (--tr->time_stamp_abs_ref)
			goto out;
	}

	FUNC3(tr->trace_buffer.buffer, abs);

#ifdef CONFIG_TRACER_MAX_TRACE
	if (tr->max_buffer.buffer)
		ring_buffer_set_time_stamp_abs(tr->max_buffer.buffer, abs);
#endif
 out:
	FUNC2(&trace_types_lock);

	return ret;
}