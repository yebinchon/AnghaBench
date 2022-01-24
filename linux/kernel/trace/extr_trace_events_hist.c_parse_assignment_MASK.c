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
struct hist_trigger_attrs {int map_bits; scalar_t__ n_assignments; char** assignment_str; void* clock; void* name; void* sort_key_str; void* vals_str; void* keys_str; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIST_ERR_TOO_MANY_VARS ; 
 scalar_t__ TRACING_MAP_VARS_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char**,char*) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct trace_array *tr,
			    char *str, struct hist_trigger_attrs *attrs)
{
	int ret = 0;

	if ((FUNC4(str, "key=")) ||
	    (FUNC4(str, "keys="))) {
		attrs->keys_str = FUNC2(str, GFP_KERNEL);
		if (!attrs->keys_str) {
			ret = -ENOMEM;
			goto out;
		}
	} else if ((FUNC4(str, "val=")) ||
		   (FUNC4(str, "vals=")) ||
		   (FUNC4(str, "values="))) {
		attrs->vals_str = FUNC2(str, GFP_KERNEL);
		if (!attrs->vals_str) {
			ret = -ENOMEM;
			goto out;
		}
	} else if (FUNC4(str, "sort=")) {
		attrs->sort_key_str = FUNC2(str, GFP_KERNEL);
		if (!attrs->sort_key_str) {
			ret = -ENOMEM;
			goto out;
		}
	} else if (FUNC4(str, "name=")) {
		attrs->name = FUNC2(str, GFP_KERNEL);
		if (!attrs->name) {
			ret = -ENOMEM;
			goto out;
		}
	} else if (FUNC4(str, "clock=")) {
		FUNC5(&str, "=");
		if (!str) {
			ret = -EINVAL;
			goto out;
		}

		str = FUNC6(str);
		attrs->clock = FUNC2(str, GFP_KERNEL);
		if (!attrs->clock) {
			ret = -ENOMEM;
			goto out;
		}
	} else if (FUNC4(str, "size=")) {
		int map_bits = FUNC3(str);

		if (map_bits < 0) {
			ret = map_bits;
			goto out;
		}
		attrs->map_bits = map_bits;
	} else {
		char *assignment;

		if (attrs->n_assignments == TRACING_MAP_VARS_MAX) {
			FUNC1(tr, HIST_ERR_TOO_MANY_VARS, FUNC0(str));
			ret = -EINVAL;
			goto out;
		}

		assignment = FUNC2(str, GFP_KERNEL);
		if (!assignment) {
			ret = -ENOMEM;
			goto out;
		}

		attrs->assignment_str[attrs->n_assignments++] = assignment;
	}
 out:
	return ret;
}