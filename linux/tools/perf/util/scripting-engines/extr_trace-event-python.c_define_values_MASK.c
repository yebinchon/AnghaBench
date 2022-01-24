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
struct tep_print_flag_sym {struct tep_print_flag_sym* next; int /*<<< orphan*/  str; int /*<<< orphan*/  value; } ;
typedef  enum tep_print_arg_type { ____Placeholder_tep_print_arg_type } tep_print_arg_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(enum tep_print_arg_type field_type,
			  struct tep_print_flag_sym *field,
			  const char *ev_name,
			  const char *field_name)
{
	FUNC0(field_type, ev_name, field_name, field->value,
		     field->str);

	if (field->next)
		FUNC1(field_type, field->next, ev_name, field_name);
}