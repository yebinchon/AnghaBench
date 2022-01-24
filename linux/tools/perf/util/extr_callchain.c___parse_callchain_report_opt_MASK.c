#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int enabled; scalar_t__ record_mode; unsigned long dump_size; int /*<<< orphan*/  print_limit; int /*<<< orphan*/  min_percent; int /*<<< orphan*/  mode; } ;
struct TYPE_5__ {int use_callchain; } ;

/* Variables and functions */
 scalar_t__ CALLCHAIN_DWARF ; 
 int /*<<< orphan*/  CHAIN_NONE ; 
 TYPE_2__ callchain_param ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char**) ; 
 char* FUNC11 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC12 (char*,char**,int /*<<< orphan*/ ) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static int
FUNC13(const char *arg, bool allow_record_opt)
{
	char *tok;
	char *endptr, *saveptr = NULL;
	bool minpcnt_set = false;
	bool record_opt_set = false;
	bool try_stack_size = false;

	callchain_param.enabled = true;
	symbol_conf.use_callchain = true;

	if (!arg)
		return 0;

	while ((tok = FUNC11((char *)arg, ",", &saveptr)) != NULL) {
		if (!FUNC9(tok, "none", FUNC8(tok))) {
			callchain_param.mode = CHAIN_NONE;
			callchain_param.enabled = false;
			symbol_conf.use_callchain = false;
			return 0;
		}

		if (!FUNC2(tok) ||
		    !FUNC3(tok) ||
		    !FUNC5(tok) ||
		    !FUNC6(tok)) {
			/* parsing ok - move on to the next */
			try_stack_size = false;
			goto next;
		} else if (allow_record_opt && !record_opt_set) {
			if (FUNC4(tok, &callchain_param))
				goto try_numbers;

			/* assume that number followed by 'dwarf' is stack size */
			if (callchain_param.record_mode == CALLCHAIN_DWARF)
				try_stack_size = true;

			record_opt_set = true;
			goto next;
		}

try_numbers:
		if (try_stack_size) {
			unsigned long size = 0;

			if (FUNC1(tok, &size) < 0)
				return -1;
			callchain_param.dump_size = size;
			try_stack_size = false;
		} else if (!minpcnt_set) {
			/* try to get the min percent */
			callchain_param.min_percent = FUNC10(tok, &endptr);
			if (tok == endptr)
				return -1;
			minpcnt_set = true;
		} else {
			/* try print limit at last */
			callchain_param.print_limit = FUNC12(tok, &endptr, 0);
			if (tok == endptr)
				return -1;
		}
next:
		arg = NULL;
	}

	if (FUNC0(&callchain_param) < 0) {
		FUNC7("Can't register callchain params\n");
		return -1;
	}
	return 0;
}