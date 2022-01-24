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
struct trace_event_file {int dummy; } ;
struct hist_trigger_data {scalar_t__ n_vals; int /*<<< orphan*/  n_fields; struct hist_field** fields; } ;
struct hist_field {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct hist_field*) ; 
 int FUNC1 (struct hist_field*) ; 
 scalar_t__ TRACING_MAP_VALS_MAX ; 
 scalar_t__ TRACING_MAP_VARS_MAX ; 
 scalar_t__ FUNC2 (int) ; 
 struct hist_field* FUNC3 (struct hist_trigger_data*,struct trace_event_file*,char*,unsigned long,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hist_trigger_data *hist_data,
			      unsigned int val_idx,
			      struct trace_event_file *file,
			      char *var_name, char *field_str,
			      unsigned long flags)
{
	struct hist_field *hist_field;
	int ret = 0;

	hist_field = FUNC3(hist_data, file, field_str, flags, var_name, 0);
	if (FUNC0(hist_field)) {
		ret = FUNC1(hist_field);
		goto out;
	}

	hist_data->fields[val_idx] = hist_field;

	++hist_data->n_vals;
	++hist_data->n_fields;

	if (FUNC2(hist_data->n_vals > TRACING_MAP_VALS_MAX + TRACING_MAP_VARS_MAX))
		ret = -EINVAL;
 out:
	return ret;
}