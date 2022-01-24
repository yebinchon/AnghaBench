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
struct perf_probe_event {char* group; char* event; int /*<<< orphan*/  sdt; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 void* FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 

__attribute__((used)) static int FUNC5(char **arg, struct perf_probe_event *pev)
{
	char *ptr;

	ptr = FUNC3(*arg, ":");
	if (ptr) {
		*ptr = '\0';
		if (!pev->sdt && !FUNC0(*arg))
			goto ng_name;
		pev->group = FUNC2(*arg);
		if (!pev->group)
			return -ENOMEM;
		*arg = ptr + 1;
	} else
		pev->group = NULL;

	pev->event = FUNC2(*arg);
	if (pev->event == NULL)
		return -ENOMEM;

	if (!pev->sdt && !FUNC0(pev->event)) {
		FUNC4(&pev->event);
ng_name:
		FUNC4(&pev->group);
		FUNC1("%s is bad for event name -it must "
			       "follow C symbol-naming rule.\n", *arg);
		return -EINVAL;
	}
	return 0;
}