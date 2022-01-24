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
struct synth_event {unsigned int n_fields; char* name; int /*<<< orphan*/  ref; } ;
struct hist_trigger_data {unsigned int n_var_refs; TYPE_1__* event_file; } ;
struct hist_field {int dummy; } ;
struct action_data {char* synth_event_name; char* action_name; unsigned int n_params; unsigned int var_ref_idx; struct synth_event* synth_event; int /*<<< orphan*/ * params; scalar_t__ use_trace_keyword; } ;
struct TYPE_2__ {struct trace_array* tr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIST_ERR_SYNTH_COUNT_MISMATCH ; 
 int /*<<< orphan*/  HIST_ERR_SYNTH_EVENT_NOT_FOUND ; 
 int /*<<< orphan*/  HIST_ERR_SYNTH_TYPE_MISMATCH ; 
 scalar_t__ FUNC0 (struct synth_event*,struct hist_field*,unsigned int) ; 
 struct hist_field* FUNC1 (struct hist_trigger_data*,struct hist_field*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  event_mutex ; 
 struct synth_event* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char**,char*) ; 
 struct hist_field* FUNC9 (struct hist_trigger_data*,struct action_data*,char*,char*,char*) ; 
 struct hist_field* FUNC10 (struct hist_trigger_data*,struct action_data*,char*,char*,char*) ; 

__attribute__((used)) static int FUNC11(struct hist_trigger_data *hist_data,
			       struct action_data *data)
{
	struct trace_array *tr = hist_data->event_file->tr;
	char *event_name, *param, *system = NULL;
	struct hist_field *hist_field, *var_ref;
	unsigned int i, var_ref_idx;
	unsigned int field_pos = 0;
	struct synth_event *event;
	char *synth_event_name;
	int ret = 0;

	FUNC7(&event_mutex);

	if (data->use_trace_keyword)
		synth_event_name = data->synth_event_name;
	else
		synth_event_name = data->action_name;

	event = FUNC3(synth_event_name);
	if (!event) {
		FUNC4(tr, HIST_ERR_SYNTH_EVENT_NOT_FOUND, FUNC2(synth_event_name));
		return -EINVAL;
	}

	event->ref++;

	var_ref_idx = hist_data->n_var_refs;

	for (i = 0; i < data->n_params; i++) {
		char *p;

		p = param = FUNC6(data->params[i], GFP_KERNEL);
		if (!param) {
			ret = -ENOMEM;
			goto err;
		}

		system = FUNC8(&param, ".");
		if (!param) {
			param = (char *)system;
			system = event_name = NULL;
		} else {
			event_name = FUNC8(&param, ".");
			if (!param) {
				FUNC5(p);
				ret = -EINVAL;
				goto err;
			}
		}

		if (param[0] == '$')
			hist_field = FUNC10(hist_data, data,
							   system, event_name,
							   param);
		else
			hist_field = FUNC9(hist_data,
								   data,
								   system,
								   event_name,
								   param);

		if (!hist_field) {
			FUNC5(p);
			ret = -EINVAL;
			goto err;
		}

		if (FUNC0(event, hist_field, field_pos) == 0) {
			var_ref = FUNC1(hist_data, hist_field,
						 system, event_name);
			if (!var_ref) {
				FUNC5(p);
				ret = -ENOMEM;
				goto err;
			}

			field_pos++;
			FUNC5(p);
			continue;
		}

		FUNC4(tr, HIST_ERR_SYNTH_TYPE_MISMATCH, FUNC2(param));
		FUNC5(p);
		ret = -EINVAL;
		goto err;
	}

	if (field_pos != event->n_fields) {
		FUNC4(tr, HIST_ERR_SYNTH_COUNT_MISMATCH, FUNC2(event->name));
		ret = -EINVAL;
		goto err;
	}

	data->synth_event = event;
	data->var_ref_idx = var_ref_idx;
 out:
	return ret;
 err:
	event->ref--;

	goto out;
}