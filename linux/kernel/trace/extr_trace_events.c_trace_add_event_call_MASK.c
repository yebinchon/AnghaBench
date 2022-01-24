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
struct trace_event_call {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_event_call*) ; 
 int FUNC1 (struct trace_event_call*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  event_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_types_lock ; 

int FUNC5(struct trace_event_call *call)
{
	int ret;
	FUNC2(&event_mutex);

	FUNC3(&trace_types_lock);

	ret = FUNC1(call, NULL);
	if (ret >= 0)
		FUNC0(call);

	FUNC4(&trace_types_lock);
	return ret;
}