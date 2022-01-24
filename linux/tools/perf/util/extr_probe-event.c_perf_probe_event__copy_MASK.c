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
struct perf_probe_event {int nargs; int /*<<< orphan*/ * args; int /*<<< orphan*/  point; int /*<<< orphan*/  uprobes; void* target; void* group; void* event; } ;
struct perf_probe_arg {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct perf_probe_event*) ; 
 int /*<<< orphan*/  out_err ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

int FUNC5(struct perf_probe_event *dst,
			   struct perf_probe_event *src)
{
	int i;

	dst->event = FUNC3(src->event, out_err);
	dst->group = FUNC3(src->group, out_err);
	dst->target = FUNC3(src->target, out_err);
	dst->uprobes = src->uprobes;

	if (FUNC2(&dst->point, &src->point) < 0)
		goto out_err;

	dst->args = FUNC4(sizeof(struct perf_probe_arg) * src->nargs);
	if (!dst->args)
		goto out_err;
	dst->nargs = src->nargs;

	for (i = 0; i < src->nargs; i++)
		if (FUNC1(&dst->args[i], &src->args[i]) < 0)
			goto out_err;
	return 0;

out_err:
	FUNC0(dst);
	return -ENOMEM;
}