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
struct callchain_param {unsigned long dump_size; int /*<<< orphan*/  record_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLCHAIN_DWARF ; 
 int /*<<< orphan*/  CALLCHAIN_FP ; 
 int /*<<< orphan*/  CALLCHAIN_LBR ; 
 int ENOMEM ; 
 int dwarf_callchain_users ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,unsigned long*) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*,char*,char**) ; 

int FUNC8(const char *arg, struct callchain_param *param)
{
	char *tok, *name, *saveptr = NULL;
	char *buf;
	int ret = -1;

	/* We need buffer that we know we can write to. */
	buf = FUNC2(FUNC5(arg) + 1);
	if (!buf)
		return -ENOMEM;

	FUNC4(buf, arg);

	tok = FUNC7((char *)buf, ",", &saveptr);
	name = tok ? : (char *)buf;

	do {
		/* Framepointer style */
		if (!FUNC6(name, "fp", sizeof("fp"))) {
			if (!FUNC7(NULL, ",", &saveptr)) {
				param->record_mode = CALLCHAIN_FP;
				ret = 0;
			} else
				FUNC3("callchain: No more arguments "
				       "needed for --call-graph fp\n");
			break;

		/* Dwarf style */
		} else if (!FUNC6(name, "dwarf", sizeof("dwarf"))) {
			const unsigned long default_stack_dump_size = 8192;

			ret = 0;
			param->record_mode = CALLCHAIN_DWARF;
			param->dump_size = default_stack_dump_size;
			dwarf_callchain_users = true;

			tok = FUNC7(NULL, ",", &saveptr);
			if (tok) {
				unsigned long size = 0;

				ret = FUNC1(tok, &size);
				param->dump_size = size;
			}
		} else if (!FUNC6(name, "lbr", sizeof("lbr"))) {
			if (!FUNC7(NULL, ",", &saveptr)) {
				param->record_mode = CALLCHAIN_LBR;
				ret = 0;
			} else
				FUNC3("callchain: No more arguments "
					"needed for --call-graph lbr\n");
			break;
		} else {
			FUNC3("callchain: Unknown --call-graph option "
			       "value: %s\n", arg);
			break;
		}

	} while (0);

	FUNC0(buf);
	return ret;
}