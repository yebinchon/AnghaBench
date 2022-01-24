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
typedef  enum tep_print_arg_type { ____Placeholder_tep_print_arg_type } tep_print_arg_type ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int TEP_PRINT_SYMBOL ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 unsigned long long FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(enum tep_print_arg_type field_type,
			 const char *ev_name,
			 const char *field_name,
			 const char *field_value,
			 const char *field_str)
{
	const char *handler_name = "define_flag_value";
	PyObject *t;
	unsigned long long value;
	unsigned n = 0;

	if (field_type == TEP_PRINT_SYMBOL)
		handler_name = "define_symbolic_value";

	t = FUNC0(4);
	if (!t)
		FUNC3("couldn't create Python tuple");

	value = FUNC6(field_value);

	FUNC1(t, n++, FUNC5(ev_name));
	FUNC1(t, n++, FUNC5(field_name));
	FUNC1(t, n++, FUNC4(value));
	FUNC1(t, n++, FUNC5(field_str));

	FUNC7(handler_name, t);

	FUNC2(t);
}