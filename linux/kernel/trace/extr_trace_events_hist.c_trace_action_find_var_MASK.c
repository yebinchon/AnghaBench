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
struct trace_array {int dummy; } ;
struct hist_trigger_data {TYPE_2__* event_file; } ;
struct hist_field {int dummy; } ;
struct TYPE_3__ {char* event_system; char* event; } ;
struct action_data {scalar_t__ handler; TYPE_1__ match_data; } ;
struct TYPE_4__ {struct trace_array* tr; } ;

/* Variables and functions */
 scalar_t__ HANDLER_ONMATCH ; 
 int /*<<< orphan*/  HIST_ERR_PARAM_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct hist_field* FUNC1 (struct hist_trigger_data*,char*,char*,char*) ; 
 struct hist_field* FUNC2 (struct hist_trigger_data*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hist_field *
FUNC4(struct hist_trigger_data *hist_data,
		      struct action_data *data,
		      char *system, char *event, char *var)
{
	struct trace_array *tr = hist_data->event_file->tr;
	struct hist_field *hist_field;

	var++; /* skip '$' */

	hist_field = FUNC2(hist_data, system, event, var);
	if (!hist_field) {
		if (!system && data->handler == HANDLER_ONMATCH) {
			system = data->match_data.event_system;
			event = data->match_data.event;
		}

		hist_field = FUNC1(hist_data, system, event, var);
	}

	if (!hist_field)
		FUNC3(tr, HIST_ERR_PARAM_NOT_FOUND, FUNC0(var));

	return hist_field;
}