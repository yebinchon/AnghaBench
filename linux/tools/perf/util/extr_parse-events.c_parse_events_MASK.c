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
struct parse_events_state {scalar_t__ nr_groups; int /*<<< orphan*/  list; struct evlist* evlist; struct parse_events_error* error; int /*<<< orphan*/  idx; } ;
struct parse_events_error {int dummy; } ;
struct evsel {int cmdline_group_boundary; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_entries; } ;
struct evlist {int /*<<< orphan*/  nr_groups; TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PE_START_EVENTS ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct evsel* FUNC2 (struct evlist*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,struct parse_events_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct evlist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct evlist *evlist, const char *str,
		 struct parse_events_error *err)
{
	struct parse_events_state parse_state = {
		.list   = FUNC0(parse_state.list),
		.idx    = evlist->core.nr_entries,
		.error  = err,
		.evlist = evlist,
	};
	int ret;

	ret = FUNC4(str, &parse_state, PE_START_EVENTS);
	FUNC6();
	if (!ret) {
		struct evsel *last;

		if (FUNC3(&parse_state.list)) {
			FUNC1(true, "WARNING: event parser found nothing\n");
			return -1;
		}

		FUNC5(evlist, &parse_state.list);
		evlist->nr_groups += parse_state.nr_groups;
		last = FUNC2(evlist);
		last->cmdline_group_boundary = true;

		return 0;
	}

	/*
	 * There are 2 users - builtin-record and builtin-test objects.
	 * Both call evlist__delete in case of error, so we dont
	 * need to bother.
	 */
	return ret;
}