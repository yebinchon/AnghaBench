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
struct tep_handle {scalar_t__ test_filters; } ;
struct tep_event_filter {int /*<<< orphan*/  error_buffer; struct tep_handle* tep; } ;
struct event_list {TYPE_1__* event; struct event_list* next; } ;
typedef  enum tep_errno { ____Placeholder_tep_errno } tep_errno ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int TEP_ERRNO__FILTER_NOT_FOUND ; 
 int TEP_ERRNO__MEM_ALLOC_FAILED ; 
 int FUNC0 (struct tep_event_filter*,TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tep_event_filter*) ; 
 int FUNC2 (struct tep_handle*,struct event_list**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_list*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 char* FUNC8 (char const*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (char const*) ; 
 char* FUNC11 (char*,char*,char**) ; 
 char* FUNC12 (struct tep_event_filter*,int /*<<< orphan*/ ) ; 

enum tep_errno FUNC13(struct tep_event_filter *filter,
					 const char *filter_str)
{
	struct tep_handle *tep = filter->tep;
	struct event_list *event;
	struct event_list *events = NULL;
	const char *filter_start;
	const char *next_event;
	char *this_event;
	char *event_name = NULL;
	char *sys_name = NULL;
	char *sp;
	enum tep_errno rtn = 0; /* TEP_ERRNO__SUCCESS */
	int len;
	int ret;

	FUNC1(filter);

	filter_start = FUNC8(filter_str, ':');
	if (filter_start)
		len = filter_start - filter_str;
	else
		len = FUNC10(filter_str);

	do {
		next_event = FUNC8(filter_str, ',');
		if (next_event &&
		    (!filter_start || next_event < filter_start))
			len = next_event - filter_str;
		else if (filter_start)
			len = filter_start - filter_str;
		else
			len = FUNC10(filter_str);

		this_event = FUNC5(len + 1);
		if (this_event == NULL) {
			/* This can only happen when events is NULL, but still */
			FUNC4(events);
			return TEP_ERRNO__MEM_ALLOC_FAILED;
		}
		FUNC6(this_event, filter_str, len);
		this_event[len] = 0;

		if (next_event)
			next_event++;

		filter_str = next_event;

		sys_name = FUNC11(this_event, "/", &sp);
		event_name = FUNC11(NULL, "/", &sp);

		if (!sys_name) {
			/* This can only happen when events is NULL, but still */
			FUNC4(events);
			FUNC3(this_event);
			return TEP_ERRNO__FILTER_NOT_FOUND;
		}

		/* Find this event */
		ret = FUNC2(tep, &events, FUNC9(sys_name), FUNC9(event_name));
		if (ret < 0) {
			FUNC4(events);
			FUNC3(this_event);
			return ret;
		}
		FUNC3(this_event);
	} while (filter_str);

	/* Skip the ':' */
	if (filter_start)
		filter_start++;

	/* filter starts here */
	for (event = events; event; event = event->next) {
		ret = FUNC0(filter, event->event, filter_start,
				   filter->error_buffer);
		/* Failures are returned if a parse error happened */
		if (ret < 0)
			rtn = ret;

		if (ret >= 0 && tep->test_filters) {
			char *test;
			test = FUNC12(filter, event->event->id);
			if (test) {
				FUNC7(" '%s: %s'\n", event->event->name, test);
				FUNC3(test);
			}
		}
	}

	FUNC4(events);

	return rtn;
}