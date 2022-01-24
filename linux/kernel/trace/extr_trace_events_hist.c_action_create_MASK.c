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
struct track_data {TYPE_1__* val; } ;
struct trace_event_file {struct trace_array* tr; } ;
struct trace_array {int dummy; } ;
struct hist_trigger_data {int /*<<< orphan*/  n_save_var_str; scalar_t__ n_save_vars; struct track_data** save_vars; int /*<<< orphan*/  key_size; struct trace_event_file* event_file; } ;
struct field_var {TYPE_1__* val; } ;
struct action_data {scalar_t__ action; unsigned int n_params; int /*<<< orphan*/ * params; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 scalar_t__ ACTION_SAVE ; 
 scalar_t__ ACTION_SNAPSHOT ; 
 scalar_t__ ACTION_TRACE ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIST_ERR_FIELD_VAR_CREATE_FAIL ; 
 int /*<<< orphan*/  HIST_ERR_TOO_MANY_SAVE_ACTIONS ; 
 int HIST_FIELD_FL_STRING ; 
 scalar_t__ FUNC0 (struct track_data*) ; 
 int FUNC1 (struct track_data*) ; 
 int /*<<< orphan*/  cond_snapshot_update ; 
 struct track_data* FUNC2 (struct hist_trigger_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hist_trigger_data*,struct action_data*) ; 
 int FUNC8 (struct trace_array*,struct track_data*,int /*<<< orphan*/ ) ; 
 struct track_data* FUNC9 (int /*<<< orphan*/ ,struct action_data*,struct hist_trigger_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct track_data*) ; 

__attribute__((used)) static int FUNC11(struct hist_trigger_data *hist_data,
			 struct action_data *data)
{
	struct trace_event_file *file = hist_data->event_file;
	struct trace_array *tr = file->tr;
	struct track_data *track_data;
	struct field_var *field_var;
	unsigned int i;
	char *param;
	int ret = 0;

	if (data->action == ACTION_TRACE)
		return FUNC7(hist_data, data);

	if (data->action == ACTION_SNAPSHOT) {
		track_data = FUNC9(hist_data->key_size, data, hist_data);
		if (FUNC0(track_data)) {
			ret = FUNC1(track_data);
			goto out;
		}

		ret = FUNC8(file->tr, track_data,
						   cond_snapshot_update);
		if (ret)
			FUNC10(track_data);

		goto out;
	}

	if (data->action == ACTION_SAVE) {
		if (hist_data->n_save_vars) {
			ret = -EEXIST;
			FUNC4(tr, HIST_ERR_TOO_MANY_SAVE_ACTIONS, 0);
			goto out;
		}

		for (i = 0; i < data->n_params; i++) {
			param = FUNC6(data->params[i], GFP_KERNEL);
			if (!param) {
				ret = -ENOMEM;
				goto out;
			}

			field_var = FUNC2(hist_data, NULL, NULL, param);
			if (FUNC0(field_var)) {
				FUNC4(tr, HIST_ERR_FIELD_VAR_CREATE_FAIL,
					 FUNC3(param));
				ret = FUNC1(field_var);
				FUNC5(param);
				goto out;
			}

			hist_data->save_vars[hist_data->n_save_vars++] = field_var;
			if (field_var->val->flags & HIST_FIELD_FL_STRING)
				hist_data->n_save_var_str++;
			FUNC5(param);
		}
	}
 out:
	return ret;
}