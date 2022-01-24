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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  event_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct trace_event_call*) ; 
 int /*<<< orphan*/  trace_event_sem ; 
 int /*<<< orphan*/  trace_types_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct trace_event_call *call)
{
	int ret;

	FUNC1(&event_mutex);

	FUNC2(&trace_types_lock);
	FUNC0(&trace_event_sem);
	ret = FUNC4(call);
	FUNC5(&trace_event_sem);
	FUNC3(&trace_types_lock);

	return ret;
}