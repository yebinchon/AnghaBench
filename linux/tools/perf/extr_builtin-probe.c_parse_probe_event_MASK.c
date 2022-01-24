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
struct perf_probe_event {int /*<<< orphan*/  nargs; int /*<<< orphan*/  nsi; int /*<<< orphan*/  target; int /*<<< orphan*/  uprobes; } ;
struct TYPE_2__ {size_t nevents; int target_used; int /*<<< orphan*/  nsi; scalar_t__ target; int /*<<< orphan*/  uprobes; struct perf_probe_event* events; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t MAX_PROBES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ params ; 
 int FUNC1 (char const*,struct perf_probe_event*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(const char *str)
{
	struct perf_probe_event *pev = &params.events[params.nevents];
	int ret;

	FUNC2("probe-definition(%d): %s\n", params.nevents, str);
	if (++params.nevents == MAX_PROBES) {
		FUNC3("Too many probes (> %d) were specified.", MAX_PROBES);
		return -1;
	}

	pev->uprobes = params.uprobes;
	if (params.target) {
		pev->target = FUNC4(params.target);
		if (!pev->target)
			return -ENOMEM;
		params.target_used = true;
	}

	pev->nsi = FUNC0(params.nsi);

	/* Parse a perf-probe command into event */
	ret = FUNC1(str, pev);
	FUNC2("%d arguments\n", pev->nargs);

	return ret;
}