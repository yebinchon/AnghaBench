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
struct trace_kprobe {int /*<<< orphan*/  tp; int /*<<< orphan*/  devent; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct trace_kprobe*) ; 

__attribute__((used)) static int FUNC6(struct trace_kprobe *tk)
{
	/* If other probes are on the event, just unregister kprobe */
	if (FUNC2(&tk->tp))
		goto unreg;

	/* Enabled event can not be unregistered */
	if (FUNC3(&tk->tp))
		return -EBUSY;

	/* Will fail if probe is being used by ftrace or perf */
	if (FUNC5(tk))
		return -EBUSY;

unreg:
	FUNC0(tk);
	FUNC1(&tk->devent);
	FUNC4(&tk->tp);

	return 0;
}