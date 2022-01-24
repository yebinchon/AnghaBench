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
struct tracepoint_func {scalar_t__ func; int prio; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct tracepoint_func* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct tracepoint_func* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct tracepoint_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct tracepoint_func*,struct tracepoint_func*,int) ; 

__attribute__((used)) static struct tracepoint_func *
FUNC5(struct tracepoint_func **funcs, struct tracepoint_func *tp_func,
	 int prio)
{
	struct tracepoint_func *old, *new;
	int nr_probes = 0;
	int pos = -1;

	if (FUNC1(!tp_func->func))
		return FUNC0(-EINVAL);

	FUNC3(*funcs);
	old = *funcs;
	if (old) {
		/* (N -> N+1), (N != 0, 1) probes */
		for (nr_probes = 0; old[nr_probes].func; nr_probes++) {
			/* Insert before probes of lower priority */
			if (pos < 0 && old[nr_probes].prio < prio)
				pos = nr_probes;
			if (old[nr_probes].func == tp_func->func &&
			    old[nr_probes].data == tp_func->data)
				return FUNC0(-EEXIST);
		}
	}
	/* + 2 : one for new probe, one for NULL func */
	new = FUNC2(nr_probes + 2);
	if (new == NULL)
		return FUNC0(-ENOMEM);
	if (old) {
		if (pos < 0) {
			pos = nr_probes;
			FUNC4(new, old, nr_probes * sizeof(struct tracepoint_func));
		} else {
			/* Copy higher priority probes ahead of the new probe */
			FUNC4(new, old, pos * sizeof(struct tracepoint_func));
			/* Copy the rest after it. */
			FUNC4(new + pos + 1, old + pos,
			       (nr_probes - pos) * sizeof(struct tracepoint_func));
		}
	} else
		pos = 0;
	new[pos] = *tp_func;
	new[nr_probes + 1].func = NULL;
	*funcs = new;
	FUNC3(*funcs);
	return old;
}