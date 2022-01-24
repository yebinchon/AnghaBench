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
struct trace_array {int dummy; } ;
struct action_data {scalar_t__ n_params; char* synth_event_name; char** params; scalar_t__ use_trace_keyword; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIST_ERR_INVALID_PARAM ; 
 int /*<<< orphan*/  HIST_ERR_PARAM_NOT_FOUND ; 
 int /*<<< orphan*/  HIST_ERR_TOO_MANY_PARAMS ; 
 scalar_t__ SYNTH_FIELDS_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char**,char*) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct trace_array *tr, char *params,
			       struct action_data *data)
{
	char *param, *saved_param;
	bool first_param = true;
	int ret = 0;

	while (params) {
		if (data->n_params >= SYNTH_FIELDS_MAX) {
			FUNC1(tr, HIST_ERR_TOO_MANY_PARAMS, 0);
			goto out;
		}

		param = FUNC4(&params, ",");
		if (!param) {
			FUNC1(tr, HIST_ERR_PARAM_NOT_FOUND, 0);
			ret = -EINVAL;
			goto out;
		}

		param = FUNC5(param);
		if (FUNC3(param) < 2) {
			FUNC1(tr, HIST_ERR_INVALID_PARAM, FUNC0(param));
			ret = -EINVAL;
			goto out;
		}

		saved_param = FUNC2(param, GFP_KERNEL);
		if (!saved_param) {
			ret = -ENOMEM;
			goto out;
		}

		if (first_param && data->use_trace_keyword) {
			data->synth_event_name = saved_param;
			first_param = false;
			continue;
		}
		first_param = false;

		data->params[data->n_params++] = saved_param;
	}
 out:
	return ret;
}