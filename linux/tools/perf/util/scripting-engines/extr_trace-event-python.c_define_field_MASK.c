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
 int TEP_PRINT_FLAGS ; 
 int TEP_PRINT_SYMBOL ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(enum tep_print_arg_type field_type,
			 const char *ev_name,
			 const char *field_name,
			 const char *delim)
{
	const char *handler_name = "define_flag_field";
	PyObject *t;
	unsigned n = 0;

	if (field_type == TEP_PRINT_SYMBOL)
		handler_name = "define_symbolic_field";

	if (field_type == TEP_PRINT_FLAGS)
		t = FUNC0(3);
	else
		t = FUNC0(2);
	if (!t)
		FUNC3("couldn't create Python tuple");

	FUNC1(t, n++, FUNC4(ev_name));
	FUNC1(t, n++, FUNC4(field_name));
	if (field_type == TEP_PRINT_FLAGS)
		FUNC1(t, n++, FUNC4(delim));

	FUNC5(handler_name, t);

	FUNC2(t);
}