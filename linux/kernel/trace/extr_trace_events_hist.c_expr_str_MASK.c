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
struct hist_field {int operator; struct hist_field** operands; } ;

/* Variables and functions */
#define  FIELD_OP_MINUS 129 
#define  FIELD_OP_PLUS 128 
 int FIELD_OP_UNARY_MINUS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_FILTER_STR_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct hist_field*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static char *FUNC4(struct hist_field *field, unsigned int level)
{
	char *expr;

	if (level > 1)
		return NULL;

	expr = FUNC2(MAX_FILTER_STR_VAL, GFP_KERNEL);
	if (!expr)
		return NULL;

	if (!field->operands[0]) {
		FUNC0(field, expr);
		return expr;
	}

	if (field->operator == FIELD_OP_UNARY_MINUS) {
		char *subexpr;

		FUNC3(expr, "-(");
		subexpr = FUNC4(field->operands[0], ++level);
		if (!subexpr) {
			FUNC1(expr);
			return NULL;
		}
		FUNC3(expr, subexpr);
		FUNC3(expr, ")");

		FUNC1(subexpr);

		return expr;
	}

	FUNC0(field->operands[0], expr);

	switch (field->operator) {
	case FIELD_OP_MINUS:
		FUNC3(expr, "-");
		break;
	case FIELD_OP_PLUS:
		FUNC3(expr, "+");
		break;
	default:
		FUNC1(expr);
		return NULL;
	}

	FUNC0(field->operands[1], expr);

	return expr;
}