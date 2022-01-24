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
struct trace_event_file {int /*<<< orphan*/  event_call; int /*<<< orphan*/  tr; } ;
struct event_trigger_data {int /*<<< orphan*/ * filter; int /*<<< orphan*/ * filter_str; } ;
struct event_filter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct event_filter**) ; 
 int /*<<< orphan*/  FUNC1 (struct event_filter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct event_filter* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct event_filter*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char**,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(char *filter_str,
		       struct event_trigger_data *trigger_data,
		       struct trace_event_file *file)
{
	struct event_trigger_data *data = trigger_data;
	struct event_filter *filter = NULL, *tmp;
	int ret = -EINVAL;
	char *s;

	if (!filter_str) /* clear the current filter */
		goto assign;

	s = FUNC8(&filter_str, " \t");

	if (!FUNC7(s) || FUNC6(s, "if") != 0)
		goto out;

	if (!filter_str)
		goto out;

	/* The filter is for the 'trigger' event, not the triggered event */
	ret = FUNC0(file->tr, file->event_call,
				  filter_str, false, &filter);
	/*
	 * If create_event_filter() fails, filter still needs to be freed.
	 * Which the calling code will do with data->filter.
	 */
 assign:
	tmp = FUNC4(data->filter);

	FUNC5(data->filter, filter);

	if (tmp) {
		/* Make sure the call is done with the filter */
		FUNC9();
		FUNC1(tmp);
	}

	FUNC2(data->filter_str);
	data->filter_str = NULL;

	if (filter_str) {
		data->filter_str = FUNC3(filter_str, GFP_KERNEL);
		if (!data->filter_str) {
			FUNC1(FUNC4(data->filter));
			data->filter = NULL;
			ret = -ENOMEM;
		}
	}
 out:
	return ret;
}