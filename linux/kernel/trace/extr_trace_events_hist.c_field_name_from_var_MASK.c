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
struct hist_trigger_data {TYPE_1__* attrs; } ;
struct TYPE_4__ {unsigned int n_vars; char** name; char** expr; } ;
struct TYPE_3__ {TYPE_2__ var_defs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static char *FUNC3(struct hist_trigger_data *hist_data,
				 char *var_name)
{
	char *name, *field;
	unsigned int i;

	for (i = 0; i < hist_data->attrs->var_defs.n_vars; i++) {
		name = hist_data->attrs->var_defs.name[i];

		if (FUNC2(var_name, name) == 0) {
			field = hist_data->attrs->var_defs.expr[i];
			if (FUNC0(field) || FUNC1(field))
				continue;
			return field;
		}
	}

	return NULL;
}