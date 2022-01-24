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
struct hist_trigger_data {TYPE_1__* attrs; } ;
struct TYPE_2__ {char* vals_str; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int TRACING_MAP_VALS_MAX ; 
 int FUNC0 (struct hist_trigger_data*) ; 
 int FUNC1 (struct hist_trigger_data*,int /*<<< orphan*/ ,struct trace_event_file*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* FUNC3 (char**,char*) ; 

__attribute__((used)) static int FUNC4(struct hist_trigger_data *hist_data,
			     struct trace_event_file *file)
{
	char *fields_str, *field_str;
	unsigned int i, j = 1;
	int ret;

	ret = FUNC0(hist_data);
	if (ret)
		goto out;

	fields_str = hist_data->attrs->vals_str;
	if (!fields_str)
		goto out;

	FUNC3(&fields_str, "=");
	if (!fields_str)
		goto out;

	for (i = 0, j = 1; i < TRACING_MAP_VALS_MAX &&
		     j < TRACING_MAP_VALS_MAX; i++) {
		field_str = FUNC3(&fields_str, ",");
		if (!field_str)
			break;

		if (FUNC2(field_str, "hitcount") == 0)
			continue;

		ret = FUNC1(hist_data, j++, file, field_str);
		if (ret)
			goto out;
	}

	if (fields_str && (FUNC2(fields_str, "hitcount") != 0))
		ret = -EINVAL;
 out:
	return ret;
}