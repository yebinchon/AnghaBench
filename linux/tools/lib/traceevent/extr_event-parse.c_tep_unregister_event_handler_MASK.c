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
typedef  int /*<<< orphan*/ * tep_event_handler_func ;
struct tep_handle {struct event_handler* handlers; } ;
struct tep_event {void* context; int /*<<< orphan*/ * handler; int /*<<< orphan*/  name; int /*<<< orphan*/  system; int /*<<< orphan*/  id; } ;
struct event_handler {struct event_handler* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_handler*) ; 
 scalar_t__ FUNC1 (struct event_handler*,int,char const*,char const*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tep_event* FUNC3 (struct tep_handle*,int,char const*,char const*) ; 

int FUNC4(struct tep_handle *tep, int id,
				 const char *sys_name, const char *event_name,
				 tep_event_handler_func func, void *context)
{
	struct tep_event *event;
	struct event_handler *handle;
	struct event_handler **next;

	event = FUNC3(tep, id, sys_name, event_name);
	if (event == NULL)
		goto not_found;

	if (event->handler == func && event->context == context) {
		FUNC2("removing override handler for event (%d) %s:%s. Going back to default handler.",
			event->id, event->system, event->name);

		event->handler = NULL;
		event->context = NULL;
		return 0;
	}

not_found:
	for (next = &tep->handlers; *next; next = &(*next)->next) {
		handle = *next;
		if (FUNC1(handle, id, sys_name, event_name,
				   func, context))
			break;
	}

	if (!(*next))
		return -1;

	*next = handle->next;
	FUNC0(handle);

	return 0;
}