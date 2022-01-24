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
struct trace_event_file {struct trace_array* tr; } ;
struct trace_array {int dummy; } ;
struct hist_trigger_data {scalar_t__ n_field_vars; } ;
struct hist_field {int /*<<< orphan*/  type; int /*<<< orphan*/  size; } ;
struct field_var {struct hist_field* val; struct hist_field* var; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct field_var* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIST_ERR_FIELD_VAR_PARSE_FAIL ; 
 int /*<<< orphan*/  HIST_ERR_TOO_MANY_FIELD_VARS ; 
 int /*<<< orphan*/  HIST_ERR_VAR_CREATE_FIND_FAIL ; 
 unsigned long HIST_FIELD_FL_VAR ; 
 scalar_t__ FUNC1 (struct hist_field*) ; 
 int FUNC2 (struct hist_field*) ; 
 scalar_t__ SYNTH_FIELDS_MAX ; 
 struct hist_field* FUNC3 (struct hist_trigger_data*,struct trace_event_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hist_field*) ; 
 struct field_var* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct hist_field* FUNC8 (struct hist_trigger_data*,struct trace_event_file*,char*,unsigned long*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct field_var *FUNC9(struct hist_trigger_data *hist_data,
					  struct trace_event_file *file,
					  char *field_name)
{
	struct hist_field *val = NULL, *var = NULL;
	unsigned long flags = HIST_FIELD_FL_VAR;
	struct trace_array *tr = file->tr;
	struct field_var *field_var;
	int ret = 0;

	if (hist_data->n_field_vars >= SYNTH_FIELDS_MAX) {
		FUNC5(tr, HIST_ERR_TOO_MANY_FIELD_VARS, FUNC4(field_name));
		ret = -EINVAL;
		goto err;
	}

	val = FUNC8(hist_data, file, field_name, &flags, NULL);
	if (FUNC1(val)) {
		FUNC5(tr, HIST_ERR_FIELD_VAR_PARSE_FAIL, FUNC4(field_name));
		ret = FUNC2(val);
		goto err;
	}

	var = FUNC3(hist_data, file, field_name, val->size, val->type);
	if (FUNC1(var)) {
		FUNC5(tr, HIST_ERR_VAR_CREATE_FIND_FAIL, FUNC4(field_name));
		FUNC6(val);
		ret = FUNC2(var);
		goto err;
	}

	field_var = FUNC7(sizeof(struct field_var), GFP_KERNEL);
	if (!field_var) {
		FUNC6(val);
		FUNC6(var);
		ret =  -ENOMEM;
		goto err;
	}

	field_var->var = var;
	field_var->val = val;
 out:
	return field_var;
 err:
	field_var = FUNC0(ret);
	goto out;
}