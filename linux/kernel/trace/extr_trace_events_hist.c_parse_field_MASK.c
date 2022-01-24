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
struct trace_event_file {int /*<<< orphan*/  event_call; struct trace_array* tr; } ;
struct trace_array {int dummy; } ;
struct hist_trigger_data {int enable_timestamps; TYPE_1__* attrs; } ;
struct ftrace_event_field {int /*<<< orphan*/  size; } ;
struct TYPE_2__ {int ts_in_usecs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ftrace_event_field* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIST_ERR_BAD_FIELD_MODIFIER ; 
 int /*<<< orphan*/  HIST_ERR_FIELD_NOT_FOUND ; 
 unsigned long HIST_FIELD_FL_CPU ; 
 unsigned long HIST_FIELD_FL_EXECNAME ; 
 unsigned long HIST_FIELD_FL_HEX ; 
 unsigned long HIST_FIELD_FL_LOG2 ; 
 unsigned long HIST_FIELD_FL_SYM ; 
 unsigned long HIST_FIELD_FL_SYM_OFFSET ; 
 unsigned long HIST_FIELD_FL_SYSCALL ; 
 unsigned long HIST_FIELD_FL_TIMESTAMP ; 
 unsigned long HIST_FIELD_FL_TIMESTAMP_USECS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char**,char*) ; 
 struct ftrace_event_field* FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct ftrace_event_field *
FUNC8(struct hist_trigger_data *hist_data, struct trace_event_file *file,
	    char *field_str, unsigned long *flags)
{
	struct ftrace_event_field *field = NULL;
	char *field_name, *modifier, *str;
	struct trace_array *tr = file->tr;

	modifier = str = FUNC4(field_str, GFP_KERNEL);
	if (!modifier)
		return FUNC0(-ENOMEM);

	field_name = FUNC6(&modifier, ".");
	if (modifier) {
		if (FUNC5(modifier, "hex") == 0)
			*flags |= HIST_FIELD_FL_HEX;
		else if (FUNC5(modifier, "sym") == 0)
			*flags |= HIST_FIELD_FL_SYM;
		else if (FUNC5(modifier, "sym-offset") == 0)
			*flags |= HIST_FIELD_FL_SYM_OFFSET;
		else if ((FUNC5(modifier, "execname") == 0) &&
			 (FUNC5(field_name, "common_pid") == 0))
			*flags |= HIST_FIELD_FL_EXECNAME;
		else if (FUNC5(modifier, "syscall") == 0)
			*flags |= HIST_FIELD_FL_SYSCALL;
		else if (FUNC5(modifier, "log2") == 0)
			*flags |= HIST_FIELD_FL_LOG2;
		else if (FUNC5(modifier, "usecs") == 0)
			*flags |= HIST_FIELD_FL_TIMESTAMP_USECS;
		else {
			FUNC2(tr, HIST_ERR_BAD_FIELD_MODIFIER, FUNC1(modifier));
			field = FUNC0(-EINVAL);
			goto out;
		}
	}

	if (FUNC5(field_name, "common_timestamp") == 0) {
		*flags |= HIST_FIELD_FL_TIMESTAMP;
		hist_data->enable_timestamps = true;
		if (*flags & HIST_FIELD_FL_TIMESTAMP_USECS)
			hist_data->attrs->ts_in_usecs = true;
	} else if (FUNC5(field_name, "cpu") == 0)
		*flags |= HIST_FIELD_FL_CPU;
	else {
		field = FUNC7(file->event_call, field_name);
		if (!field || !field->size) {
			FUNC2(tr, HIST_ERR_FIELD_NOT_FOUND, FUNC1(field_name));
			field = FUNC0(-EINVAL);
			goto out;
		}
	}
 out:
	FUNC3(str);

	return field;
}