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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(PyObject *handler)
{
	int arg_count = 0;

	/*
	 * The attribute for the code object is func_code in Python 2,
	 * whereas it is __code__ in Python 3.0+.
	 */
	PyObject *code_obj = FUNC2(handler,
		"func_code");
	if (FUNC1()) {
		FUNC0();
		code_obj = FUNC2(handler,
			"__code__");
	}
	FUNC0();
	if (code_obj) {
		PyObject *arg_count_obj = FUNC2(code_obj,
			"co_argcount");
		if (arg_count_obj) {
			arg_count = (int) FUNC4(arg_count_obj);
			FUNC3(arg_count_obj);
		}
		FUNC3(code_obj);
	}
	return arg_count;
}