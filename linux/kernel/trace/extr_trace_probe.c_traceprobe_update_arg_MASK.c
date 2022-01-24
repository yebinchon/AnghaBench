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
struct probe_arg {struct fetch_insn* code; } ;
struct fetch_insn {scalar_t__ op; unsigned long immediate; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FETCH_NOP_SYMBOL ; 
 scalar_t__ FETCH_OP_END ; 
 scalar_t__ FETCH_OP_IMM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,long*) ; 

int FUNC3(struct probe_arg *arg)
{
	struct fetch_insn *code = arg->code;
	long offset;
	char *tmp;
	char c;
	int ret = 0;

	while (code && code->op != FETCH_OP_END) {
		if (code->op == FETCH_NOP_SYMBOL) {
			if (code[1].op != FETCH_OP_IMM)
				return -EINVAL;

			tmp = FUNC1(code->data, "+-");
			if (tmp)
				c = *tmp;
			ret = FUNC2(code->data,
							     &offset);
			if (ret)
				return ret;

			code[1].immediate =
				(unsigned long)FUNC0(code->data);
			if (tmp)
				*tmp = c;
			if (!code[1].immediate)
				return -ENOENT;
			code[1].immediate += offset;
		}
		code++;
	}
	return 0;
}