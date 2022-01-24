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
struct kernel_param {scalar_t__ level; int /*<<< orphan*/  mod; TYPE_1__* ops; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ s16 ;
struct TYPE_2__ {int flags; int (* set ) (char*,struct kernel_param const*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 int KERNEL_PARAM_OPS_FL_NOARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kernel_param const*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int FUNC5 (char*,struct kernel_param const*) ; 

__attribute__((used)) static int FUNC6(char *param,
		     char *val,
		     const char *doing,
		     const struct kernel_param *params,
		     unsigned num_params,
		     s16 min_level,
		     s16 max_level,
		     void *arg,
		     int (*handle_unknown)(char *param, char *val,
				     const char *doing, void *arg))
{
	unsigned int i;
	int err;

	/* Find parameter */
	for (i = 0; i < num_params; i++) {
		if (FUNC3(param, params[i].name)) {
			if (params[i].level < min_level
			    || params[i].level > max_level)
				return 0;
			/* No one handled NULL, so do it here. */
			if (!val &&
			    !(params[i].ops->flags & KERNEL_PARAM_OPS_FL_NOARG))
				return -EINVAL;
			FUNC4("handling %s with %p\n", param,
				params[i].ops->set);
			FUNC0(params[i].mod);
			if (FUNC2(&params[i]))
				err = params[i].ops->set(val, &params[i]);
			else
				err = -EPERM;
			FUNC1(params[i].mod);
			return err;
		}
	}

	if (handle_unknown) {
		FUNC4("doing %s: %s='%s'\n", doing, param, val);
		return handle_unknown(param, val, doing, arg);
	}

	FUNC4("Unknown argument '%s'\n", param);
	return -ENOENT;
}