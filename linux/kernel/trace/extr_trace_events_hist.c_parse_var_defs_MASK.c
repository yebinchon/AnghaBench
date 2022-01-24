#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct trace_array {int dummy; } ;
struct hist_trigger_data {TYPE_3__* attrs; TYPE_1__* event_file; } ;
struct TYPE_5__ {char** name; char** expr; unsigned int n_vars; } ;
struct TYPE_6__ {unsigned int n_assignments; char** assignment_str; TYPE_2__ var_defs; } ;
struct TYPE_4__ {struct trace_array* tr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIST_ERR_MALFORMED_ASSIGNMENT ; 
 int /*<<< orphan*/  HIST_ERR_TOO_MANY_VARS ; 
 unsigned int TRACING_MAP_VARS_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hist_trigger_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static int FUNC6(struct hist_trigger_data *hist_data)
{
	struct trace_array *tr = hist_data->event_file->tr;
	char *s, *str, *var_name, *field_str;
	unsigned int i, j, n_vars = 0;
	int ret = 0;

	for (i = 0; i < hist_data->attrs->n_assignments; i++) {
		str = hist_data->attrs->assignment_str[i];
		for (j = 0; j < TRACING_MAP_VARS_MAX; j++) {
			field_str = FUNC5(&str, ",");
			if (!field_str)
				break;

			var_name = FUNC5(&field_str, "=");
			if (!var_name || !field_str) {
				FUNC2(tr, HIST_ERR_MALFORMED_ASSIGNMENT,
					 FUNC0(var_name));
				ret = -EINVAL;
				goto free;
			}

			if (n_vars == TRACING_MAP_VARS_MAX) {
				FUNC2(tr, HIST_ERR_TOO_MANY_VARS, FUNC0(var_name));
				ret = -EINVAL;
				goto free;
			}

			s = FUNC4(var_name, GFP_KERNEL);
			if (!s) {
				ret = -ENOMEM;
				goto free;
			}
			hist_data->attrs->var_defs.name[n_vars] = s;

			s = FUNC4(field_str, GFP_KERNEL);
			if (!s) {
				FUNC3(hist_data->attrs->var_defs.name[n_vars]);
				ret = -ENOMEM;
				goto free;
			}
			hist_data->attrs->var_defs.expr[n_vars++] = s;

			hist_data->attrs->var_defs.n_vars = n_vars;
		}
	}

	return ret;
 free:
	FUNC1(hist_data);

	return ret;
}