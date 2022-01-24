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
struct hist_trigger_data {int /*<<< orphan*/  map; int /*<<< orphan*/  remove; } ;
struct TYPE_2__ {int idx; struct hist_field* name; struct hist_trigger_data* hist_data; } ;
struct hist_field {int size; struct hist_field* type; TYPE_1__ var; struct hist_trigger_data* hist_data; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct hist_field* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIST_FIELD_FL_VAR ; 
 scalar_t__ FUNC1 (struct hist_trigger_data*,struct trace_event_file*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hist_field*) ; 
 void* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 struct hist_field* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hist_field *FUNC6(struct hist_trigger_data *hist_data,
				     struct trace_event_file *file,
				     char *name, int size, const char *type)
{
	struct hist_field *var;
	int idx;

	if (FUNC1(hist_data, file, name) && !hist_data->remove) {
		var = FUNC0(-EINVAL);
		goto out;
	}

	var = FUNC4(sizeof(struct hist_field), GFP_KERNEL);
	if (!var) {
		var = FUNC0(-ENOMEM);
		goto out;
	}

	idx = FUNC5(hist_data->map);
	if (idx < 0) {
		FUNC2(var);
		var = FUNC0(-EINVAL);
		goto out;
	}

	var->flags = HIST_FIELD_FL_VAR;
	var->var.idx = idx;
	var->var.hist_data = var->hist_data = hist_data;
	var->size = size;
	var->var.name = FUNC3(name, GFP_KERNEL);
	var->type = FUNC3(type, GFP_KERNEL);
	if (!var->var.name || !var->type) {
		FUNC2(var->var.name);
		FUNC2(var->type);
		FUNC2(var);
		var = FUNC0(-ENOMEM);
	}
 out:
	return var;
}