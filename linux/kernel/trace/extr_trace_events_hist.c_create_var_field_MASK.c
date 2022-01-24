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
struct trace_event_file {int dummy; } ;
struct trace_array {int dummy; } ;
struct hist_trigger_data {unsigned int n_vars; int /*<<< orphan*/  remove; TYPE_1__* event_file; } ;
struct TYPE_2__ {struct trace_array* tr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HIST_ERR_DUPLICATE_VAR ; 
 unsigned long HIST_FIELD_FL_VAR ; 
 unsigned int TRACING_MAP_VALS_MAX ; 
 unsigned int TRACING_MAP_VARS_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct hist_trigger_data*,unsigned int,struct trace_event_file*,char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct hist_trigger_data*,struct trace_event_file*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hist_trigger_data *hist_data,
			    unsigned int val_idx,
			    struct trace_event_file *file,
			    char *var_name, char *expr_str)
{
	struct trace_array *tr = hist_data->event_file->tr;
	unsigned long flags = 0;

	if (FUNC0(val_idx >= TRACING_MAP_VALS_MAX + TRACING_MAP_VARS_MAX))
		return -EINVAL;

	if (FUNC3(hist_data, file, var_name) && !hist_data->remove) {
		FUNC4(tr, HIST_ERR_DUPLICATE_VAR, FUNC2(var_name));
		return -EINVAL;
	}

	flags |= HIST_FIELD_FL_VAR;
	hist_data->n_vars++;
	if (FUNC0(hist_data->n_vars > TRACING_MAP_VARS_MAX))
		return -EINVAL;

	return FUNC1(hist_data, val_idx, file, var_name, expr_str, flags);
}