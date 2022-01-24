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
struct trace_array {int nr_topts; struct trace_array* name; int /*<<< orphan*/  tracing_cpumask; struct trace_array* topts; int /*<<< orphan*/  dir; int /*<<< orphan*/  list; TYPE_1__* current_trace; scalar_t__ ref; } ;
struct TYPE_2__ {scalar_t__ ref; } ;

/* Variables and functions */
 int EBUSY ; 
 int TRACE_FLAGS_MAX_SIZE ; 
 int ZEROED_TRACE_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct trace_array*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct trace_array*) ; 

__attribute__((used)) static int FUNC11(struct trace_array *tr)
{
	int i;

	if (tr->ref || (tr->current_trace && tr->current_trace->ref))
		return -EBUSY;

	FUNC7(&tr->list);

	/* Disable all the flags that were enabled coming in */
	for (i = 0; i < TRACE_FLAGS_MAX_SIZE; i++) {
		if ((1 << i) & ZEROED_TRACE_FLAGS)
			FUNC8(tr, 1 << i, 0);
	}

	FUNC10(tr);
	FUNC0(tr);
	FUNC1(tr);
	FUNC4(tr);
	FUNC5(tr);
	FUNC9(tr->dir);
	FUNC3(tr);

	for (i = 0; i < tr->nr_topts; i++) {
		FUNC6(tr->topts[i].topts);
	}
	FUNC6(tr->topts);

	FUNC2(tr->tracing_cpumask);
	FUNC6(tr->name);
	FUNC6(tr);
	tr = NULL;

	return 0;
}