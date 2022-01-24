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
struct trace_probe {int /*<<< orphan*/  size; struct probe_arg* args; int /*<<< orphan*/  nr_args; } ;
struct probe_arg {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_NAME_TOO_LONG ; 
 int /*<<< orphan*/  BAD_ARG_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ARG_NAME_LEN ; 
 int /*<<< orphan*/  NO_ARG_NAME ; 
 int /*<<< orphan*/  USED_ARG_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct probe_arg*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *,struct probe_arg*,unsigned int,int) ; 

int FUNC7(struct trace_probe *tp, int i, char *arg,
				unsigned int flags)
{
	struct probe_arg *parg = &tp->args[i];
	char *body;

	/* Increment count for freeing args in error case */
	tp->nr_args++;

	body = FUNC3(arg, '=');
	if (body) {
		if (body - arg > MAX_ARG_NAME_LEN) {
			FUNC4(0, ARG_NAME_TOO_LONG);
			return -EINVAL;
		} else if (body == arg) {
			FUNC4(0, NO_ARG_NAME);
			return -EINVAL;
		}
		parg->name = FUNC2(arg, body - arg, GFP_KERNEL);
		body++;
	} else {
		/* If argument name is omitted, set "argN" */
		parg->name = FUNC1(GFP_KERNEL, "arg%d", i + 1);
		body = arg;
	}
	if (!parg->name)
		return -ENOMEM;

	if (!FUNC0(parg->name)) {
		FUNC4(0, BAD_ARG_NAME);
		return -EINVAL;
	}
	if (FUNC5(parg->name, tp->args, i)) {
		FUNC4(0, USED_ARG_NAME);
		return -EINVAL;
	}
	/* Parse fetch argument */
	return FUNC6(body, &tp->size, parg, flags,
					       body - arg);
}