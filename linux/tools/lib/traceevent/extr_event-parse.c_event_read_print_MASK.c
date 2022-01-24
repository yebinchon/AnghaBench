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
struct TYPE_2__ {char* format; int /*<<< orphan*/ * args; } ;
struct tep_event {TYPE_1__ print_fmt; } ;
typedef  enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;

/* Variables and functions */
 int /*<<< orphan*/  TEP_EVENT_DELIM ; 
 int TEP_EVENT_DQUOTE ; 
 int /*<<< orphan*/  TEP_EVENT_ITEM ; 
 int TEP_EVENT_NONE ; 
 int /*<<< orphan*/  TEP_EVENT_OP ; 
 scalar_t__ FUNC0 (char**,char*,char*,char*) ; 
 int FUNC1 (struct tep_event*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (char**) ; 
 scalar_t__ FUNC7 (int,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct tep_event *event)
{
	enum tep_event_type type;
	char *token;
	int ret;

	if (FUNC5(TEP_EVENT_ITEM, "print") < 0)
		return -1;

	if (FUNC4(TEP_EVENT_ITEM, "fmt") < 0)
		return -1;

	if (FUNC4(TEP_EVENT_OP, ":") < 0)
		return -1;

	if (FUNC3(TEP_EVENT_DQUOTE, &token) < 0)
		goto fail;

 concat:
	event->print_fmt.format = token;
	event->print_fmt.args = NULL;

	/* ok to have no arg */
	type = FUNC6(&token);

	if (type == TEP_EVENT_NONE)
		return 0;

	/* Handle concatenation of print lines */
	if (type == TEP_EVENT_DQUOTE) {
		char *cat;

		if (FUNC0(&cat, "%s%s", event->print_fmt.format, token) < 0)
			goto fail;
		FUNC2(token);
		FUNC2(event->print_fmt.format);
		event->print_fmt.format = NULL;
		token = cat;
		goto concat;
	}
			     
	if (FUNC7(type, token, TEP_EVENT_DELIM, ","))
		goto fail;

	FUNC2(token);

	ret = FUNC1(event, &event->print_fmt.args);
	if (ret < 0)
		return -1;

	return ret;

 fail:
	FUNC2(token);
	return -1;
}