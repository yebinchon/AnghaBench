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
struct trace_array {int dummy; } ;
struct hist_trigger_data {TYPE_1__* event_file; } ;
struct hist_field {int dummy; } ;
struct TYPE_2__ {struct trace_array* tr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIST_ERR_VAR_NOT_FOUND ; 
 struct hist_field* FUNC0 (struct hist_trigger_data*,struct hist_field*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct hist_field* FUNC2 (struct hist_trigger_data*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static struct hist_field *FUNC5(struct hist_trigger_data *hist_data,
					char *system, char *event_name,
					char *var_name)
{
	struct hist_field *var_field = NULL, *ref_field = NULL;
	struct trace_array *tr = hist_data->event_file->tr;

	if (!FUNC4(var_name))
		return NULL;

	var_name++;

	var_field = FUNC2(hist_data, system, event_name, var_name);
	if (var_field)
		ref_field = FUNC0(hist_data, var_field,
					   system, event_name);

	if (!ref_field)
		FUNC3(tr, HIST_ERR_VAR_NOT_FOUND, FUNC1(var_name));

	return ref_field;
}