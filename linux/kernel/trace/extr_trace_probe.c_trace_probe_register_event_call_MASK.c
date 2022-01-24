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
struct trace_probe {int dummy; } ;
struct trace_event_call {int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct trace_event_call*) ; 
 struct trace_event_call* FUNC2 (struct trace_probe*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct trace_probe *tp)
{
	struct trace_event_call *call = FUNC2(tp);
	int ret;

	ret = FUNC0(&call->event);
	if (!ret)
		return -ENODEV;

	ret = FUNC1(call);
	if (ret)
		FUNC3(&call->event);

	return ret;
}