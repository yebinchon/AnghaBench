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
struct hist_field {unsigned long flags; int read_once; int operator; int /*<<< orphan*/  fn; int /*<<< orphan*/  type; int /*<<< orphan*/  name; struct hist_field** operands; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct hist_field* FUNC0 (int) ; 
#define  FIELD_OP_MINUS 129 
 int FIELD_OP_NONE ; 
#define  FIELD_OP_PLUS 128 
 int FIELD_OP_UNARY_MINUS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIST_ERR_TOO_MANY_SUBEXPR ; 
 unsigned long HIST_FIELD_FL_EXPR ; 
 unsigned long HIST_FIELD_FL_TIMESTAMP ; 
 unsigned long HIST_FIELD_FL_TIMESTAMP_USECS ; 
 scalar_t__ FUNC1 (struct hist_field*) ; 
 int FUNC2 (struct hist_field*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct hist_field*,struct hist_field*) ; 
 int FUNC4 (char*) ; 
 struct hist_field* FUNC5 (struct hist_trigger_data*,int /*<<< orphan*/ *,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct hist_field*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct hist_field*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hist_field_minus ; 
 int /*<<< orphan*/  hist_field_plus ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hist_field* FUNC11 (struct hist_trigger_data*,struct trace_event_file*,char*,unsigned long*,char*) ; 
 struct hist_field* FUNC12 (struct hist_trigger_data*,struct trace_event_file*,char*,unsigned long,char*,unsigned int) ; 
 char* FUNC13 (char**,char*) ; 

__attribute__((used)) static struct hist_field *FUNC14(struct hist_trigger_data *hist_data,
				     struct trace_event_file *file,
				     char *str, unsigned long flags,
				     char *var_name, unsigned int level)
{
	struct hist_field *operand1 = NULL, *operand2 = NULL, *expr = NULL;
	unsigned long operand_flags;
	int field_op, ret = -EINVAL;
	char *sep, *operand1_str;

	if (level > 3) {
		FUNC9(file->tr, HIST_ERR_TOO_MANY_SUBEXPR, FUNC7(str));
		return FUNC0(-EINVAL);
	}

	field_op = FUNC4(str);

	if (field_op == FIELD_OP_NONE)
		return FUNC11(hist_data, file, str, &flags, var_name);

	if (field_op == FIELD_OP_UNARY_MINUS)
		return FUNC12(hist_data, file, str, flags, var_name, ++level);

	switch (field_op) {
	case FIELD_OP_MINUS:
		sep = "-";
		break;
	case FIELD_OP_PLUS:
		sep = "+";
		break;
	default:
		goto free;
	}

	operand1_str = FUNC13(&str, sep);
	if (!operand1_str || !str)
		goto free;

	operand_flags = 0;
	operand1 = FUNC11(hist_data, file, operand1_str,
			      &operand_flags, NULL);
	if (FUNC1(operand1)) {
		ret = FUNC2(operand1);
		operand1 = NULL;
		goto free;
	}

	/* rest of string could be another expression e.g. b+c in a+b+c */
	operand_flags = 0;
	operand2 = FUNC14(hist_data, file, str, operand_flags, NULL, ++level);
	if (FUNC1(operand2)) {
		ret = FUNC2(operand2);
		operand2 = NULL;
		goto free;
	}

	ret = FUNC3(file->tr, operand1, operand2);
	if (ret)
		goto free;

	flags |= HIST_FIELD_FL_EXPR;

	flags |= operand1->flags &
		(HIST_FIELD_FL_TIMESTAMP | HIST_FIELD_FL_TIMESTAMP_USECS);

	expr = FUNC5(hist_data, NULL, flags, var_name);
	if (!expr) {
		ret = -ENOMEM;
		goto free;
	}

	operand1->read_once = true;
	operand2->read_once = true;

	expr->operands[0] = operand1;
	expr->operands[1] = operand2;
	expr->operator = field_op;
	expr->name = FUNC8(expr, 0);
	expr->type = FUNC10(operand1->type, GFP_KERNEL);
	if (!expr->type) {
		ret = -ENOMEM;
		goto free;
	}

	switch (field_op) {
	case FIELD_OP_MINUS:
		expr->fn = hist_field_minus;
		break;
	case FIELD_OP_PLUS:
		expr->fn = hist_field_plus;
		break;
	default:
		ret = -EINVAL;
		goto free;
	}

	return expr;
 free:
	FUNC6(operand1, 0);
	FUNC6(operand2, 0);
	FUNC6(expr, 0);

	return FUNC0(ret);
}