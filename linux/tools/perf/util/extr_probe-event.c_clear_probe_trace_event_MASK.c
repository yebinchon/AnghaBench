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
struct TYPE_3__ {TYPE_2__* module; TYPE_2__* realname; TYPE_2__* symbol; } ;
struct probe_trace_event {int nargs; TYPE_2__* args; TYPE_1__ point; TYPE_2__* group; TYPE_2__* event; } ;
struct probe_trace_arg_ref {struct probe_trace_arg_ref* next; } ;
struct TYPE_4__ {struct probe_trace_arg_ref* ref; struct TYPE_4__* type; struct TYPE_4__* value; struct TYPE_4__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct probe_trace_arg_ref*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 

void FUNC2(struct probe_trace_event *tev)
{
	struct probe_trace_arg_ref *ref, *next;
	int i;

	FUNC1(&tev->event);
	FUNC1(&tev->group);
	FUNC1(&tev->point.symbol);
	FUNC1(&tev->point.realname);
	FUNC1(&tev->point.module);
	for (i = 0; i < tev->nargs; i++) {
		FUNC1(&tev->args[i].name);
		FUNC1(&tev->args[i].value);
		FUNC1(&tev->args[i].type);
		ref = tev->args[i].ref;
		while (ref) {
			next = ref->next;
			FUNC0(ref);
			ref = next;
		}
	}
	FUNC1(&tev->args);
	tev->nargs = 0;
}