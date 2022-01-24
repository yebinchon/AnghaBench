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
struct hist_trigger_data {TYPE_1__* event_file; } ;
struct hist_field {int dummy; } ;
struct TYPE_2__ {struct trace_array* tr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hist_field*) ; 
 struct hist_field* FUNC1 (struct trace_event_file*,char*) ; 
 struct hist_field* FUNC2 (struct hist_trigger_data*,char*) ; 
 struct trace_event_file* FUNC3 (struct trace_array*,char*,char*,char*) ; 

__attribute__((used)) static struct hist_field *FUNC4(struct hist_trigger_data *hist_data,
					 char *system,
					 char *event_name,
					 char *var_name)
{
	struct trace_array *tr = hist_data->event_file->tr;
	struct hist_field *hist_field = NULL;
	struct trace_event_file *file;

	if (!system || !event_name) {
		hist_field = FUNC2(hist_data, var_name);
		if (FUNC0(hist_field))
			return NULL;
		if (hist_field)
			return hist_field;
	}

	file = FUNC3(tr, system, event_name, var_name);
	if (!file)
		return NULL;

	hist_field = FUNC1(file, var_name);

	return hist_field;
}