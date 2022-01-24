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
struct trace_array {int dummy; } ;
struct TYPE_2__ {void* save_data; void* check_val; } ;
struct action_data {int use_trace_keyword; int handler; int /*<<< orphan*/  action_name; int /*<<< orphan*/  action; void* fn; TYPE_1__ track_data; } ;
typedef  enum handler_id { ____Placeholder_handler_id } handler_id ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_SAVE ; 
 int /*<<< orphan*/  ACTION_SNAPSHOT ; 
 int /*<<< orphan*/  ACTION_TRACE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HANDLER_ONCHANGE ; 
 int HANDLER_ONMATCH ; 
 int HANDLER_ONMAX ; 
 int /*<<< orphan*/  HIST_ERR_ACTION_MISMATCH ; 
 int /*<<< orphan*/  HIST_ERR_ACTION_NOT_FOUND ; 
 int /*<<< orphan*/  HIST_ERR_NO_CLOSING_PAREN ; 
 int /*<<< orphan*/  HIST_ERR_NO_SAVE_PARAMS ; 
 void* action_trace ; 
 void* check_track_val_changed ; 
 void* check_track_val_max ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 void* ontrack_action ; 
 int FUNC3 (struct trace_array*,char*,struct action_data*) ; 
 void* save_track_data_snapshot ; 
 void* save_track_data_vars ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static int FUNC6(struct trace_array *tr, char *str, struct action_data *data,
			enum handler_id handler)
{
	char *action_name;
	int ret = 0;

	FUNC5(&str, ".");
	if (!str) {
		FUNC1(tr, HIST_ERR_ACTION_NOT_FOUND, 0);
		ret = -EINVAL;
		goto out;
	}

	action_name = FUNC5(&str, "(");
	if (!action_name || !str) {
		FUNC1(tr, HIST_ERR_ACTION_NOT_FOUND, 0);
		ret = -EINVAL;
		goto out;
	}

	if (FUNC4(action_name, "save")) {
		char *params = FUNC5(&str, ")");

		if (!params) {
			FUNC1(tr, HIST_ERR_NO_SAVE_PARAMS, 0);
			ret = -EINVAL;
			goto out;
		}

		ret = FUNC3(tr, params, data);
		if (ret)
			goto out;

		if (handler == HANDLER_ONMAX)
			data->track_data.check_val = check_track_val_max;
		else if (handler == HANDLER_ONCHANGE)
			data->track_data.check_val = check_track_val_changed;
		else {
			FUNC1(tr, HIST_ERR_ACTION_MISMATCH, FUNC0(action_name));
			ret = -EINVAL;
			goto out;
		}

		data->track_data.save_data = save_track_data_vars;
		data->fn = ontrack_action;
		data->action = ACTION_SAVE;
	} else if (FUNC4(action_name, "snapshot")) {
		char *params = FUNC5(&str, ")");

		if (!str) {
			FUNC1(tr, HIST_ERR_NO_CLOSING_PAREN, FUNC0(params));
			ret = -EINVAL;
			goto out;
		}

		if (handler == HANDLER_ONMAX)
			data->track_data.check_val = check_track_val_max;
		else if (handler == HANDLER_ONCHANGE)
			data->track_data.check_val = check_track_val_changed;
		else {
			FUNC1(tr, HIST_ERR_ACTION_MISMATCH, FUNC0(action_name));
			ret = -EINVAL;
			goto out;
		}

		data->track_data.save_data = save_track_data_snapshot;
		data->fn = ontrack_action;
		data->action = ACTION_SNAPSHOT;
	} else {
		char *params = FUNC5(&str, ")");

		if (FUNC4(action_name, "trace"))
			data->use_trace_keyword = true;

		if (params) {
			ret = FUNC3(tr, params, data);
			if (ret)
				goto out;
		}

		if (handler == HANDLER_ONMAX)
			data->track_data.check_val = check_track_val_max;
		else if (handler == HANDLER_ONCHANGE)
			data->track_data.check_val = check_track_val_changed;

		if (handler != HANDLER_ONMATCH) {
			data->track_data.save_data = action_trace;
			data->fn = ontrack_action;
		} else
			data->fn = action_trace;

		data->action = ACTION_TRACE;
	}

	data->action_name = FUNC2(action_name, GFP_KERNEL);
	if (!data->action_name) {
		ret = -ENOMEM;
		goto out;
	}

	data->handler = handler;
 out:
	return ret;
}