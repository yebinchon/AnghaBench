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
struct TYPE_2__ {int rotate; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; struct ordered_events* in; } ;
struct perf_top {TYPE_1__ qe; } ;
struct ordered_events {int /*<<< orphan*/  nr_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  OE_FLUSH__TOP ; 
 int /*<<< orphan*/  done ; 
 scalar_t__ FUNC0 (struct ordered_events*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ordered_events* FUNC5 (struct perf_top*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void *FUNC7(void *arg)
{
	struct perf_top *top = arg;

	while (!done) {
		struct ordered_events *out, *in = top->qe.in;

		if (!in->nr_events) {
			FUNC6(100);
			continue;
		}

		out = FUNC5(top);

		FUNC3(&top->qe.mutex);
		top->qe.rotate = true;
		FUNC2(&top->qe.cond, &top->qe.mutex);
		FUNC4(&top->qe.mutex);

		if (FUNC0(out, OE_FLUSH__TOP))
			FUNC1("failed to process events\n");
	}

	return NULL;
}