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
struct tep_print_arg {int dummy; } ;
struct tep_function_handler {int dummy; } ;
struct tep_event {int /*<<< orphan*/  tep; } ;
typedef  enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;

/* Variables and functions */
 int TEP_EVENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct tep_event*,char*,char*) ; 
 struct tep_function_handler* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int is_flag_field ; 
 int is_symbolic_field ; 
 int FUNC3 (struct tep_event*,struct tep_print_arg*,char**) ; 
 int FUNC4 (struct tep_event*,struct tep_print_arg*,char**) ; 
 int FUNC5 (struct tep_event*,struct tep_print_arg*,char**) ; 
 int FUNC6 (struct tep_event*,struct tep_print_arg*,char**) ; 
 int FUNC7 (struct tep_event*,struct tep_function_handler*,struct tep_print_arg*,char**) ; 
 int FUNC8 (struct tep_event*,struct tep_print_arg*,char**) ; 
 int FUNC9 (struct tep_event*,struct tep_print_arg*,char**) ; 
 int FUNC10 (struct tep_event*,struct tep_print_arg*,char**) ; 
 int FUNC11 (struct tep_event*,struct tep_print_arg*,char**) ; 
 int FUNC12 (struct tep_event*,struct tep_print_arg*,char**) ; 
 scalar_t__ FUNC13 (char*,char*) ; 

__attribute__((used)) static enum tep_event_type
FUNC14(struct tep_event *event, struct tep_print_arg *arg,
		 char *token, char **tok)
{
	struct tep_function_handler *func;

	if (FUNC13(token, "__print_flags") == 0) {
		FUNC2(token);
		is_flag_field = 1;
		return FUNC6(event, arg, tok);
	}
	if (FUNC13(token, "__print_symbolic") == 0) {
		FUNC2(token);
		is_symbolic_field = 1;
		return FUNC12(event, arg, tok);
	}
	if (FUNC13(token, "__print_hex") == 0) {
		FUNC2(token);
		return FUNC8(event, arg, tok);
	}
	if (FUNC13(token, "__print_hex_str") == 0) {
		FUNC2(token);
		return FUNC9(event, arg, tok);
	}
	if (FUNC13(token, "__print_array") == 0) {
		FUNC2(token);
		return FUNC10(event, arg, tok);
	}
	if (FUNC13(token, "__get_str") == 0) {
		FUNC2(token);
		return FUNC11(event, arg, tok);
	}
	if (FUNC13(token, "__get_bitmask") == 0) {
		FUNC2(token);
		return FUNC3(event, arg, tok);
	}
	if (FUNC13(token, "__get_dynamic_array") == 0) {
		FUNC2(token);
		return FUNC4(event, arg, tok);
	}
	if (FUNC13(token, "__get_dynamic_array_len") == 0) {
		FUNC2(token);
		return FUNC5(event, arg, tok);
	}

	func = FUNC1(event->tep, token);
	if (func) {
		FUNC2(token);
		return FUNC7(event, func, arg, tok);
	}

	FUNC0(event, "function %s not defined", token);
	FUNC2(token);
	return TEP_EVENT_ERROR;
}