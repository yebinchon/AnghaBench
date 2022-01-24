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
struct hist_trigger_data {int dummy; } ;
struct hist_field {int dummy; } ;
struct ftrace_event_field {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct hist_field* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ftrace_event_field*) ; 
 int FUNC2 (struct ftrace_event_field*) ; 
 struct hist_field* FUNC3 (struct hist_trigger_data*,struct hist_field*,char*) ; 
 struct hist_field* FUNC4 (struct hist_trigger_data*,struct ftrace_event_field*,unsigned long,char*) ; 
 char* FUNC5 (struct hist_trigger_data*,char*,char*,char*) ; 
 struct ftrace_event_field* FUNC6 (struct hist_trigger_data*,struct trace_event_file*,char*,unsigned long*) ; 
 struct hist_field* FUNC7 (struct hist_trigger_data*,char*,char*,char*) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char**,char*) ; 

__attribute__((used)) static struct hist_field *FUNC10(struct hist_trigger_data *hist_data,
				     struct trace_event_file *file, char *str,
				     unsigned long *flags, char *var_name)
{
	char *s, *ref_system = NULL, *ref_event = NULL, *ref_var = str;
	struct ftrace_event_field *field = NULL;
	struct hist_field *hist_field = NULL;
	int ret = 0;

	s = FUNC8(str, '.');
	if (s) {
		s = FUNC8(++s, '.');
		if (s) {
			ref_system = FUNC9(&str, ".");
			if (!str) {
				ret = -EINVAL;
				goto out;
			}
			ref_event = FUNC9(&str, ".");
			if (!str) {
				ret = -EINVAL;
				goto out;
			}
			ref_var = str;
		}
	}

	s = FUNC5(hist_data, ref_system, ref_event, ref_var);
	if (!s) {
		hist_field = FUNC7(hist_data, ref_system,
					   ref_event, ref_var);
		if (hist_field) {
			if (var_name) {
				hist_field = FUNC3(hist_data, hist_field, var_name);
				if (!hist_field) {
					ret = -ENOMEM;
					goto out;
				}
			}
			return hist_field;
		}
	} else
		str = s;

	field = FUNC6(hist_data, file, str, flags);
	if (FUNC1(field)) {
		ret = FUNC2(field);
		goto out;
	}

	hist_field = FUNC4(hist_data, field, *flags, var_name);
	if (!hist_field) {
		ret = -ENOMEM;
		goto out;
	}

	return hist_field;
 out:
	return FUNC0(ret);
}