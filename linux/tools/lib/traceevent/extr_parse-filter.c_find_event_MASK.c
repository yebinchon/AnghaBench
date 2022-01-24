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
struct tep_handle {int nr_events; struct tep_event** events; } ;
struct tep_event {int dummy; } ;
struct event_list {int dummy; } ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  enum tep_errno { ____Placeholder_tep_errno } tep_errno ;

/* Variables and functions */
 int REG_ICASE ; 
 int REG_NOSUB ; 
 int TEP_ERRNO__EVENT_NOT_FOUND ; 
 int TEP_ERRNO__INVALID_EVENT_NAME ; 
 int TEP_ERRNO__MEM_ALLOC_FAILED ; 
 scalar_t__ FUNC0 (struct event_list**,struct tep_event*) ; 
 int FUNC1 (char**,char*,char*) ; 
 scalar_t__ FUNC2 (struct tep_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum tep_errno
FUNC6(struct tep_handle *tep, struct event_list **events,
	   char *sys_name, char *event_name)
{
	struct tep_event *event;
	regex_t ereg;
	regex_t sreg;
	int match = 0;
	int fail = 0;
	char *reg;
	int ret;
	int i;

	if (!event_name) {
		/* if no name is given, then swap sys and name */
		event_name = sys_name;
		sys_name = NULL;
	}

	ret = FUNC1(&reg, "^%s$", event_name);
	if (ret < 0)
		return TEP_ERRNO__MEM_ALLOC_FAILED;

	ret = FUNC4(&ereg, reg, REG_ICASE|REG_NOSUB);
	FUNC3(reg);

	if (ret)
		return TEP_ERRNO__INVALID_EVENT_NAME;

	if (sys_name) {
		ret = FUNC1(&reg, "^%s$", sys_name);
		if (ret < 0) {
			FUNC5(&ereg);
			return TEP_ERRNO__MEM_ALLOC_FAILED;
		}

		ret = FUNC4(&sreg, reg, REG_ICASE|REG_NOSUB);
		FUNC3(reg);
		if (ret) {
			FUNC5(&ereg);
			return TEP_ERRNO__INVALID_EVENT_NAME;
		}
	}

	for (i = 0; i < tep->nr_events; i++) {
		event = tep->events[i];
		if (FUNC2(event, sys_name ? &sreg : NULL, &ereg)) {
			match = 1;
			if (FUNC0(events, event) < 0) {
				fail = 1;
				break;
			}
		}
	}

	FUNC5(&ereg);
	if (sys_name)
		FUNC5(&sreg);

	if (!match)
		return TEP_ERRNO__EVENT_NOT_FOUND;
	if (fail)
		return TEP_ERRNO__MEM_ALLOC_FAILED;

	return 0;
}