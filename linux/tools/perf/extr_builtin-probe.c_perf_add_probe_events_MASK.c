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
struct TYPE_3__ {int /*<<< orphan*/  module; } ;
struct probe_trace_event {char* group; char* event; TYPE_1__ point; } ;
struct perf_probe_event {int ntevs; struct probe_trace_event* tevs; int /*<<< orphan*/  uprobes; } ;
struct TYPE_4__ {char command; } ;

/* Variables and functions */
 int FUNC0 (struct perf_probe_event*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_probe_event*,int) ; 
 int FUNC2 (struct perf_probe_event*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__ params ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,struct perf_probe_event*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct perf_probe_event*,int) ; 

__attribute__((used)) static int FUNC8(struct perf_probe_event *pevs, int npevs)
{
	int ret;
	int i, k;
	const char *event = NULL, *group = NULL;

	ret = FUNC4(pevs->uprobes);
	if (ret < 0)
		return ret;

	ret = FUNC2(pevs, npevs);
	if (ret < 0)
		goto out_cleanup;

	if (params.command == 'D') {	/* it shows definition */
		ret = FUNC7(pevs, npevs);
		goto out_cleanup;
	}

	ret = FUNC0(pevs, npevs);
	if (ret < 0)
		goto out_cleanup;

	for (i = k = 0; i < npevs; i++)
		k += pevs[i].ntevs;

	FUNC5("Added new event%s\n", (k > 1) ? "s:" : ":");
	for (i = 0; i < npevs; i++) {
		struct perf_probe_event *pev = &pevs[i];

		for (k = 0; k < pev->ntevs; k++) {
			struct probe_trace_event *tev = &pev->tevs[k];

			/* We use tev's name for showing new events */
			FUNC6(tev->group, tev->event, pev,
					      tev->point.module, false);

			/* Save the last valid name */
			event = tev->event;
			group = tev->group;
		}
	}

	/* Note that it is possible to skip all events because of blacklist */
	if (event) {
		/* Show how to use the event. */
		FUNC5("\nYou can now use it in all perf tools, such as:\n\n");
		FUNC5("\tperf record -e %s:%s -aR sleep 1\n\n", group, event);
	}

out_cleanup:
	FUNC1(pevs, npevs);
	FUNC3();
	return ret;
}