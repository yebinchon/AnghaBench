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
struct trace_probe {int /*<<< orphan*/  list; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct trace_probe*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_probe*) ; 

int FUNC5(struct trace_probe *tp, struct trace_probe *to)
{
	if (FUNC3(tp))
		return -EBUSY;

	FUNC1(&tp->list);
	FUNC2(tp->event);

	tp->event = to->event;
	FUNC0(&tp->list, FUNC4(to));

	return 0;
}