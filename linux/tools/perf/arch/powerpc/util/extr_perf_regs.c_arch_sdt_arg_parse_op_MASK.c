#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rm_eo; int rm_so; } ;
typedef  TYPE_1__ regmatch_t ;

/* Variables and functions */
 int ENOMEM ; 
 int SDT_ARG_SKIP ; 
 int SDT_ARG_VALID ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char,...) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  sdt_op_regex1 ; 
 int /*<<< orphan*/  sdt_op_regex2 ; 
 char* FUNC4 (int) ; 

int FUNC5(char *old_op, char **new_op)
{
	int ret, new_len;
	regmatch_t rm[5];
	char prefix;

	/* Constant argument. Uprobe does not support it */
	if (old_op[0] == 'i') {
		FUNC0("Skipping unsupported SDT argument: %s\n", old_op);
		return SDT_ARG_SKIP;
	}

	ret = FUNC3();
	if (ret < 0)
		return ret;

	if (!FUNC1(&sdt_op_regex1, old_op, 3, rm, 0)) {
		/* REG or %rREG --> %gprREG */

		new_len = 5;	/* % g p r NULL */
		new_len += (int)(rm[2].rm_eo - rm[2].rm_so);

		*new_op = FUNC4(new_len);
		if (!*new_op)
			return -ENOMEM;

		FUNC2(*new_op, new_len, "%%gpr%.*s",
			(int)(rm[2].rm_eo - rm[2].rm_so), old_op + rm[2].rm_so);
	} else if (!FUNC1(&sdt_op_regex2, old_op, 5, rm, 0)) {
		/*
		 * -NUM(REG) or NUM(REG) or -NUM(%rREG) or NUM(%rREG) -->
		 *	+/-NUM(%gprREG)
		 */
		prefix = (rm[1].rm_so == -1) ? '+' : '-';

		new_len = 8;	/* +/- ( % g p r ) NULL */
		new_len += (int)(rm[2].rm_eo - rm[2].rm_so);
		new_len += (int)(rm[4].rm_eo - rm[4].rm_so);

		*new_op = FUNC4(new_len);
		if (!*new_op)
			return -ENOMEM;

		FUNC2(*new_op, new_len, "%c%.*s(%%gpr%.*s)", prefix,
			(int)(rm[2].rm_eo - rm[2].rm_so), old_op + rm[2].rm_so,
			(int)(rm[4].rm_eo - rm[4].rm_so), old_op + rm[4].rm_so);
	} else {
		FUNC0("Skipping unsupported SDT argument: %s\n", old_op);
		return SDT_ARG_SKIP;
	}

	return SDT_ARG_VALID;
}