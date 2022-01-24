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
struct hist_trigger_data {int /*<<< orphan*/  n_actions; struct action_data** actions; TYPE_2__* attrs; TYPE_1__* event_file; } ;
struct action_data {int dummy; } ;
struct TYPE_4__ {unsigned int n_actions; char** action_str; } ;
struct TYPE_3__ {struct trace_array* tr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HANDLER_ONCHANGE ; 
 int /*<<< orphan*/  HANDLER_ONMAX ; 
 scalar_t__ FUNC0 (struct action_data*) ; 
 int FUNC1 (struct action_data*) ; 
 struct action_data* FUNC2 (struct trace_array*,char*) ; 
 int FUNC3 (char*,char*) ; 
 struct action_data* FUNC4 (struct hist_trigger_data*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hist_trigger_data *hist_data)
{
	struct trace_array *tr = hist_data->event_file->tr;
	struct action_data *data;
	unsigned int i;
	int ret = 0;
	char *str;
	int len;

	for (i = 0; i < hist_data->attrs->n_actions; i++) {
		str = hist_data->attrs->action_str[i];

		if ((len = FUNC3(str, "onmatch("))) {
			char *action_str = str + len;

			data = FUNC2(tr, action_str);
			if (FUNC0(data)) {
				ret = FUNC1(data);
				break;
			}
		} else if ((len = FUNC3(str, "onmax("))) {
			char *action_str = str + len;

			data = FUNC4(hist_data, action_str,
						HANDLER_ONMAX);
			if (FUNC0(data)) {
				ret = FUNC1(data);
				break;
			}
		} else if ((len = FUNC3(str, "onchange("))) {
			char *action_str = str + len;

			data = FUNC4(hist_data, action_str,
						HANDLER_ONCHANGE);
			if (FUNC0(data)) {
				ret = FUNC1(data);
				break;
			}
		} else {
			ret = -EINVAL;
			break;
		}

		hist_data->actions[hist_data->n_actions++] = data;
	}

	return ret;
}