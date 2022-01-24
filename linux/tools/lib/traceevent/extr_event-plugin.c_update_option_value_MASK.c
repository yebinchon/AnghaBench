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
struct tep_plugin_option {char const* value; int set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(struct tep_plugin_option *op, const char *val)
{
	char *op_val;

	if (!val) {
		/* toggle, only if option is boolean */
		if (op->value)
			/* Warn? */
			return 0;
		op->set ^= 1;
		return 0;
	}

	/*
	 * If the option has a value then it takes a string
	 * otherwise the option is a boolean.
	 */
	if (op->value) {
		op->value = val;
		return 0;
	}

	/* Option is boolean, must be either "1", "0", "true" or "false" */

	op_val = FUNC3(val);
	if (!op_val)
		return -1;
	FUNC1(op_val);

	if (FUNC2(val, "1") == 0 || FUNC2(val, "true") == 0)
		op->set = 1;
	else if (FUNC2(val, "0") == 0 || FUNC2(val, "false") == 0)
		op->set = 0;
	FUNC0(op_val);

	return 0;
}