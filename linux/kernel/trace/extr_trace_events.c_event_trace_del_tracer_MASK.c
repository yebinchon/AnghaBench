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
struct trace_array {int /*<<< orphan*/ * event_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_array*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  event_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_event_sem ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct trace_array *tr)
{
	FUNC5(&event_mutex);

	/* Disable any event triggers and associated soft-disabled events */
	FUNC3(tr);

	/* Clear the pid list */
	FUNC0(tr);

	/* Disable any running events */
	FUNC1(tr, NULL, NULL, NULL, 0);

	/* Make sure no more events are being executed */
	FUNC7();

	FUNC4(&trace_event_sem);
	FUNC2(tr);
	FUNC6(tr->event_dir);
	FUNC8(&trace_event_sem);

	tr->event_dir = NULL;

	return 0;
}