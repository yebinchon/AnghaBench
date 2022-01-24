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
struct trace_event_file {int dummy; } ;
struct trace_array {int dummy; } ;
struct hist_trigger_data {unsigned int n_actions; struct action_data** actions; TYPE_2__* event_file; } ;
struct hist_field {int dummy; } ;
struct TYPE_3__ {char* event_system; char* event; } ;
struct action_data {scalar_t__ handler; TYPE_1__ match_data; } ;
struct TYPE_4__ {struct trace_array* tr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct hist_field* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HANDLER_ONMATCH ; 
 int /*<<< orphan*/  HIST_ERR_VAR_NOT_UNIQUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct hist_field* FUNC2 (struct trace_event_file*,char*) ; 
 struct trace_event_file* FUNC3 (struct trace_array*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hist_field *
FUNC5(struct hist_trigger_data *hist_data, char *var_name)
{
	struct trace_array *tr = hist_data->event_file->tr;
	struct hist_field *hist_field, *found = NULL;
	struct trace_event_file *file;
	unsigned int i;

	for (i = 0; i < hist_data->n_actions; i++) {
		struct action_data *data = hist_data->actions[i];

		if (data->handler == HANDLER_ONMATCH) {
			char *system = data->match_data.event_system;
			char *event_name = data->match_data.event;

			file = FUNC3(tr, system, event_name, var_name);
			if (!file)
				continue;
			hist_field = FUNC2(file, var_name);
			if (hist_field) {
				if (found) {
					FUNC4(tr, HIST_ERR_VAR_NOT_UNIQUE,
						 FUNC1(var_name));
					return FUNC0(-EINVAL);
				}

				found = hist_field;
			}
		}
	}
	return found;
}