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
struct trace_event_file {int /*<<< orphan*/  tr; } ;
struct hist_trigger_data {int dummy; } ;
struct hist_field {int flags; int /*<<< orphan*/  type; int /*<<< orphan*/  name; int /*<<< orphan*/  operator; struct hist_field** operands; int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct hist_field* FUNC0 (int) ; 
 int /*<<< orphan*/  FIELD_OP_UNARY_MINUS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIST_ERR_TOO_MANY_SUBEXPR ; 
 unsigned long HIST_FIELD_FL_EXPR ; 
 int HIST_FIELD_FL_TIMESTAMP ; 
 int HIST_FIELD_FL_TIMESTAMP_USECS ; 
 scalar_t__ FUNC1 (struct hist_field*) ; 
 int FUNC2 (struct hist_field*) ; 
 struct hist_field* FUNC3 (struct hist_trigger_data*,int /*<<< orphan*/ *,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hist_field*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct hist_field*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hist_field_unary_minus ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hist_field* FUNC9 (struct hist_trigger_data*,struct trace_event_file*,char*,unsigned long,int /*<<< orphan*/ *,unsigned int) ; 
 char* FUNC10 (char*,char) ; 
 char* FUNC11 (char*,char) ; 

__attribute__((used)) static struct hist_field *FUNC12(struct hist_trigger_data *hist_data,
				      struct trace_event_file *file,
				      char *str, unsigned long flags,
				      char *var_name, unsigned int level)
{
	struct hist_field *operand1, *expr = NULL;
	unsigned long operand_flags;
	int ret = 0;
	char *s;

	/* we support only -(xxx) i.e. explicit parens required */

	if (level > 3) {
		FUNC7(file->tr, HIST_ERR_TOO_MANY_SUBEXPR, FUNC5(str));
		ret = -EINVAL;
		goto free;
	}

	str++; /* skip leading '-' */

	s = FUNC10(str, '(');
	if (s)
		str++;
	else {
		ret = -EINVAL;
		goto free;
	}

	s = FUNC11(str, ')');
	if (s)
		*s = '\0';
	else {
		ret = -EINVAL; /* no closing ')' */
		goto free;
	}

	flags |= HIST_FIELD_FL_EXPR;
	expr = FUNC3(hist_data, NULL, flags, var_name);
	if (!expr) {
		ret = -ENOMEM;
		goto free;
	}

	operand_flags = 0;
	operand1 = FUNC9(hist_data, file, str, operand_flags, NULL, ++level);
	if (FUNC1(operand1)) {
		ret = FUNC2(operand1);
		goto free;
	}

	expr->flags |= operand1->flags &
		(HIST_FIELD_FL_TIMESTAMP | HIST_FIELD_FL_TIMESTAMP_USECS);
	expr->fn = hist_field_unary_minus;
	expr->operands[0] = operand1;
	expr->operator = FIELD_OP_UNARY_MINUS;
	expr->name = FUNC6(expr, 0);
	expr->type = FUNC8(operand1->type, GFP_KERNEL);
	if (!expr->type) {
		ret = -ENOMEM;
		goto free;
	}

	return expr;
 free:
	FUNC4(expr, 0);
	return FUNC0(ret);
}