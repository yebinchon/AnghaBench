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
struct hist_trigger_data {int dummy; } ;
struct hist_field {struct hist_field* var; } ;
struct field_var {struct field_var* var; } ;
struct TYPE_2__ {char* event_system; char* event; } ;
struct action_data {scalar_t__ handler; TYPE_1__ match_data; } ;

/* Variables and functions */
 scalar_t__ HANDLER_ONMATCH ; 
 scalar_t__ FUNC0 (struct hist_field*) ; 
 struct hist_field* FUNC1 (struct hist_trigger_data*,char*,char*,char*) ; 
 struct hist_field* FUNC2 (struct hist_trigger_data*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hist_field*) ; 
 int /*<<< orphan*/  FUNC4 (struct hist_trigger_data*,struct hist_field*) ; 

__attribute__((used)) static struct hist_field *
FUNC5(struct hist_trigger_data *hist_data,
			      struct action_data *data, char *system,
			      char *event, char *var)
{
	struct hist_field *hist_field = NULL;
	struct field_var *field_var;

	/*
	 * First try to create a field var on the target event (the
	 * currently being defined).  This will create a variable for
	 * unqualified fields on the target event, or if qualified,
	 * target fields that have qualified names matching the target.
	 */
	field_var = FUNC2(hist_data, system, event, var);

	if (field_var && !FUNC0(field_var)) {
		FUNC4(hist_data, field_var);
		hist_field = field_var->var;
	} else {
		field_var = NULL;
		/*
		 * If no explicit system.event is specfied, default to
		 * looking for fields on the onmatch(system.event.xxx)
		 * event.
		 */
		if (!system && data->handler == HANDLER_ONMATCH) {
			system = data->match_data.event_system;
			event = data->match_data.event;
		}

		/*
		 * At this point, we're looking at a field on another
		 * event.  Because we can't modify a hist trigger on
		 * another event to add a variable for a field, we need
		 * to create a new trigger on that event and create the
		 * variable at the same time.
		 */
		hist_field = FUNC1(hist_data, system, event, var);
		if (FUNC0(hist_field))
			goto free;
	}
 out:
	return hist_field;
 free:
	FUNC3(field_var);
	hist_field = NULL;
	goto out;
}