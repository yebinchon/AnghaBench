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
struct strlist {int dummy; } ;
struct TYPE_4__ {char* realname; int /*<<< orphan*/  retprobe; } ;
struct probe_trace_event {char* event; char* group; TYPE_2__ point; } ;
struct TYPE_3__ {char* function; } ;
struct perf_probe_event {char* event; char* group; int /*<<< orphan*/  sdt; TYPE_1__ point; } ;

/* Variables and functions */
 int ENOMEM ; 
 char* PERFPROBE_GROUP ; 
 int FUNC0 (char*,int,char const*,struct strlist*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strlist*,char const*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct probe_trace_event *tev,
				       struct perf_probe_event *pev,
				       struct strlist *namelist,
				       bool allow_suffix)
{
	const char *event, *group;
	char buf[64];
	int ret;

	/* If probe_event or trace_event already have the name, reuse it */
	if (pev->event && !pev->sdt)
		event = pev->event;
	else if (tev->event)
		event = tev->event;
	else {
		/* Or generate new one from probe point */
		if (pev->point.function &&
			(FUNC4(pev->point.function, "0x", 2) != 0) &&
			!FUNC2(pev->point.function))
			event = pev->point.function;
		else
			event = tev->point.realname;
	}
	if (pev->group && !pev->sdt)
		group = pev->group;
	else if (tev->group)
		group = tev->group;
	else
		group = PERFPROBE_GROUP;

	/* Get an unused new event name */
	ret = FUNC0(buf, 64, event, namelist,
				 tev->point.retprobe, allow_suffix);
	if (ret < 0)
		return ret;

	event = buf;

	tev->event = FUNC1(event);
	tev->group = FUNC1(group);
	if (tev->event == NULL || tev->group == NULL)
		return -ENOMEM;

	/* Add added event name to namelist */
	FUNC3(namelist, event);
	return 0;
}