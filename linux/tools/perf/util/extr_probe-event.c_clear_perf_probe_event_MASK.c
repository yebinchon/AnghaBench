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
struct perf_probe_event {int nargs; TYPE_1__* args; int /*<<< orphan*/  point; TYPE_1__* target; TYPE_1__* group; TYPE_1__* event; } ;
struct perf_probe_arg_field {TYPE_1__* name; struct perf_probe_arg_field* next; } ;
struct TYPE_2__ {struct perf_probe_arg_field* field; struct TYPE_2__* type; struct TYPE_2__* var; struct TYPE_2__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_probe_arg_field*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 

void FUNC3(struct perf_probe_event *pev)
{
	struct perf_probe_arg_field *field, *next;
	int i;

	FUNC2(&pev->event);
	FUNC2(&pev->group);
	FUNC2(&pev->target);
	FUNC0(&pev->point);

	for (i = 0; i < pev->nargs; i++) {
		FUNC2(&pev->args[i].name);
		FUNC2(&pev->args[i].var);
		FUNC2(&pev->args[i].type);
		field = pev->args[i].field;
		while (field) {
			next = field->next;
			FUNC2(&field->name);
			FUNC1(field);
			field = next;
		}
	}
	pev->nargs = 0;
	FUNC2(&pev->args);
}