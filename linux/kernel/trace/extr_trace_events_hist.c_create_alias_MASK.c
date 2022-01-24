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
struct hist_trigger_data {int dummy; } ;
struct hist_field {int /*<<< orphan*/  var_ref_idx; int /*<<< orphan*/  event_name; int /*<<< orphan*/  system; struct hist_field** operands; int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 unsigned long HIST_FIELD_FL_ALIAS ; 
 unsigned long HIST_FIELD_FL_VAR ; 
 struct hist_field* FUNC0 (struct hist_trigger_data*,int /*<<< orphan*/ *,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hist_field*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hist_field*,struct hist_field*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hist_field *FUNC3(struct hist_trigger_data *hist_data,
				       struct hist_field *var_ref,
				       char *var_name)
{
	struct hist_field *alias = NULL;
	unsigned long flags = HIST_FIELD_FL_ALIAS | HIST_FIELD_FL_VAR;

	alias = FUNC0(hist_data, NULL, flags, var_name);
	if (!alias)
		return NULL;

	alias->fn = var_ref->fn;
	alias->operands[0] = var_ref;

	if (FUNC2(alias, var_ref, var_ref->system, var_ref->event_name)) {
		FUNC1(alias, 0);
		return NULL;
	}

	alias->var_ref_idx = var_ref->var_ref_idx;

	return alias;
}