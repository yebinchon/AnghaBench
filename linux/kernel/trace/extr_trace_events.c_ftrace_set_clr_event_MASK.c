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
struct trace_array {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct trace_array*,char*,char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char**,char*) ; 

int FUNC4(struct trace_array *tr, char *buf, int set)
{
	char *event = NULL, *sub = NULL, *match;
	int ret;

	/*
	 * The buf format can be <subsystem>:<event-name>
	 *  *:<event-name> means any event by that name.
	 *  :<event-name> is the same.
	 *
	 *  <subsystem>:* means all events in that subsystem
	 *  <subsystem>: means the same.
	 *
	 *  <name> (no ':') means all events in a subsystem with
	 *  the name <name> or any event that matches <name>
	 */

	match = FUNC3(&buf, ":");
	if (buf) {
		sub = match;
		event = buf;
		match = NULL;

		if (!FUNC2(sub) || FUNC1(sub, "*") == 0)
			sub = NULL;
		if (!FUNC2(event) || FUNC1(event, "*") == 0)
			event = NULL;
	}

	ret = FUNC0(tr, match, sub, event, set);

	/* Put back the colon to allow this to be called again */
	if (buf)
		*(buf - 1) = ':';

	return ret;
}