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
struct probe_trace_point {scalar_t__ ref_ctr_offset; } ;
struct probe_trace_event {int nargs; TYPE_1__* args; int /*<<< orphan*/  uprobes; int /*<<< orphan*/  event; int /*<<< orphan*/  group; struct probe_trace_point point; } ;
struct TYPE_2__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (struct probe_trace_event*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct probe_trace_event *tev)
{
	int i;
	char *buf = FUNC3(tev);
	struct probe_trace_point *tp = &tev->point;

	if (tp->ref_ctr_offset && !FUNC4()) {
		FUNC1("A semaphore is associated with %s:%s and "
			   "seems your kernel doesn't support it.\n",
			   tev->group, tev->event);
	}

	/* Old uprobe event doesn't support memory dereference */
	if (!tev->uprobes || tev->nargs == 0 || !buf)
		goto out;

	for (i = 0; i < tev->nargs; i++)
		if (FUNC2(tev->args[i].value, "[$@+-]*")) {
			FUNC1("Please upgrade your kernel to at least "
				   "3.14 to have access to feature %s\n",
				   tev->args[i].value);
			break;
		}
out:
	FUNC0(buf);
}