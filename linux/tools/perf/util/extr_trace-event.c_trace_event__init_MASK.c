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
struct trace_event {struct tep_handle* pevent; int /*<<< orphan*/  plugin_list; } ;
struct tep_handle {int dummy; } ;

/* Variables and functions */
 struct tep_handle* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct tep_handle*) ; 

int FUNC2(struct trace_event *t)
{
	struct tep_handle *pevent = FUNC0();

	if (pevent) {
		t->plugin_list = FUNC1(pevent);
		t->pevent  = pevent;
	}

	return pevent ? 0 : -1;
}