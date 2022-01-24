#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct probe_trace_event {int nargs; TYPE_2__* args; int /*<<< orphan*/  point; scalar_t__ group; scalar_t__ event; } ;
struct perf_probe_event {int nargs; TYPE_1__* args; int /*<<< orphan*/  point; int /*<<< orphan*/ * group; int /*<<< orphan*/ * event; } ;
struct perf_probe_arg {int dummy; } ;
struct TYPE_4__ {scalar_t__ name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct perf_probe_event*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct strbuf*,int) ; 
 void* FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_2__*,struct strbuf*) ; 
 TYPE_1__* FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct probe_trace_event *tev,
			       struct perf_probe_event *pev, bool is_kprobe)
{
	struct strbuf buf = STRBUF_INIT;
	int i, ret;

	/* Convert event/group name */
	pev->event = FUNC4(tev->event);
	pev->group = FUNC4(tev->group);
	if (pev->event == NULL || pev->group == NULL)
		return -ENOMEM;

	/* Convert trace_point to probe_point */
	ret = FUNC1(&tev->point, &pev->point, is_kprobe);
	if (ret < 0)
		return ret;

	/* Convert trace_arg to probe_arg */
	pev->nargs = tev->nargs;
	pev->args = FUNC6(sizeof(struct perf_probe_arg) * pev->nargs);
	if (pev->args == NULL)
		return -ENOMEM;
	for (i = 0; i < tev->nargs && ret >= 0; i++) {
		if (tev->args[i].name)
			pev->args[i].name = FUNC4(tev->args[i].name);
		else {
			if ((ret = FUNC3(&buf, 32)) < 0)
				goto error;
			ret = FUNC5(&tev->args[i], &buf);
			pev->args[i].name = FUNC2(&buf, NULL);
		}
		if (pev->args[i].name == NULL && ret >= 0)
			ret = -ENOMEM;
	}
error:
	if (ret < 0)
		FUNC0(pev);

	return ret;
}