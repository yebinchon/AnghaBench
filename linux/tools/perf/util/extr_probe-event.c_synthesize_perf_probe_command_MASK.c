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
struct strbuf {int dummy; } ;
struct perf_probe_event {int nargs; scalar_t__ args; int /*<<< orphan*/  point; scalar_t__ event; scalar_t__ group; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERFPROBE_GROUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct strbuf*,char*,char*,...) ; 
 scalar_t__ FUNC2 (struct strbuf*,char*) ; 
 char* FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 char* FUNC6 (scalar_t__) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 

char *FUNC8(struct perf_probe_event *pev)
{
	struct strbuf buf;
	char *tmp, *ret = NULL;
	int i;

	if (FUNC4(&buf, 64))
		return NULL;
	if (pev->event)
		if (FUNC1(&buf, "%s:%s=", pev->group ?: PERFPROBE_GROUP,
				pev->event) < 0)
			goto out;

	tmp = FUNC7(&pev->point);
	if (!tmp || FUNC2(&buf, tmp) < 0)
		goto out;
	FUNC0(tmp);

	for (i = 0; i < pev->nargs; i++) {
		tmp = FUNC6(pev->args + i);
		if (!tmp || FUNC1(&buf, " %s", tmp) < 0)
			goto out;
		FUNC0(tmp);
	}

	ret = FUNC3(&buf, NULL);
out:
	FUNC5(&buf);
	return ret;
}