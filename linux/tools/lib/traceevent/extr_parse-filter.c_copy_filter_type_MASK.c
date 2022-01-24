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
struct tep_filter_type {struct tep_filter_arg* filter; TYPE_1__* event; } ;
struct TYPE_4__ {int value; } ;
struct tep_filter_arg {TYPE_2__ boolean; int /*<<< orphan*/  type; } ;
struct tep_event_filter {int /*<<< orphan*/  tep; } ;
struct tep_event {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {char* system; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEP_FILTER_ARG_BOOLEAN ; 
 struct tep_filter_type* FUNC0 (struct tep_event_filter*,int /*<<< orphan*/ ) ; 
 struct tep_filter_arg* FUNC1 () ; 
 char* FUNC2 (struct tep_event_filter*,struct tep_filter_arg*) ; 
 int /*<<< orphan*/  FUNC3 (struct tep_event_filter*,struct tep_event*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 struct tep_event* FUNC6 (int /*<<< orphan*/ ,char const*,char const*) ; 

__attribute__((used)) static int FUNC7(struct tep_event_filter *filter,
			    struct tep_event_filter *source,
			    struct tep_filter_type *filter_type)
{
	struct tep_filter_arg *arg;
	struct tep_event *event;
	const char *sys;
	const char *name;
	char *str;

	/* Can't assume that the tep's are the same */
	sys = filter_type->event->system;
	name = filter_type->event->name;
	event = FUNC6(filter->tep, sys, name);
	if (!event)
		return -1;

	str = FUNC2(source, filter_type->filter);
	if (!str)
		return -1;

	if (FUNC5(str, "TRUE") == 0 || FUNC5(str, "FALSE") == 0) {
		/* Add trivial event */
		arg = FUNC1();
		if (arg == NULL)
			return -1;

		arg->type = TEP_FILTER_ARG_BOOLEAN;
		if (FUNC5(str, "TRUE") == 0)
			arg->boolean.value = 1;
		else
			arg->boolean.value = 0;

		filter_type = FUNC0(filter, event->id);
		if (filter_type == NULL)
			return -1;

		filter_type->filter = arg;

		FUNC4(str);
		return 0;
	}

	FUNC3(filter, event, str, NULL);
	FUNC4(str);

	return 0;
}