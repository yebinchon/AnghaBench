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
struct hist_field {int flags; } ;

/* Variables and functions */
 int HIST_FIELD_FL_VAR_REF ; 
 char* FUNC0 (struct hist_field*) ; 
 char const* FUNC1 (struct hist_field*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static void FUNC3(struct hist_field *field, char *expr)
{
	if (field->flags & HIST_FIELD_FL_VAR_REF)
		FUNC2(expr, "$");

	FUNC2(expr, FUNC1(field, 0));

	if (field->flags && !(field->flags & HIST_FIELD_FL_VAR_REF)) {
		const char *flags_str = FUNC0(field);

		if (flags_str) {
			FUNC2(expr, ".");
			FUNC2(expr, flags_str);
		}
	}
}