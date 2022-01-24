#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int type; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct tep_filter_arg {TYPE_1__ op; } ;
struct tep_event_filter {int dummy; } ;

/* Variables and functions */
#define  TEP_FILTER_OP_AND 130 
#define  TEP_FILTER_OP_NOT 129 
#define  TEP_FILTER_OP_OR 128 
 char* FUNC0 (struct tep_event_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static char *FUNC4(struct tep_event_filter *filter, struct tep_filter_arg *arg)
{
	char *str = NULL;
	char *left = NULL;
	char *right = NULL;
	char *op = NULL;
	int left_val = -1;
	int right_val = -1;
	int val;

	switch (arg->op.type) {
	case TEP_FILTER_OP_AND:
		op = "&&";
		/* fall through */
	case TEP_FILTER_OP_OR:
		if (!op)
			op = "||";

		left = FUNC0(filter, arg->op.left);
		right = FUNC0(filter, arg->op.right);
		if (!left || !right)
			break;

		/* Try to consolidate boolean values */
		if (FUNC3(left, "TRUE") == 0)
			left_val = 1;
		else if (FUNC3(left, "FALSE") == 0)
			left_val = 0;

		if (FUNC3(right, "TRUE") == 0)
			right_val = 1;
		else if (FUNC3(right, "FALSE") == 0)
			right_val = 0;

		if (left_val >= 0) {
			if ((arg->op.type == TEP_FILTER_OP_AND && !left_val) ||
			    (arg->op.type == TEP_FILTER_OP_OR && left_val)) {
				/* Just return left value */
				str = left;
				left = NULL;
				break;
			}
			if (right_val >= 0) {
				/* just evaluate this. */
				val = 0;
				switch (arg->op.type) {
				case TEP_FILTER_OP_AND:
					val = left_val && right_val;
					break;
				case TEP_FILTER_OP_OR:
					val = left_val || right_val;
					break;
				default:
					break;
				}
				FUNC1(&str, val ? "TRUE" : "FALSE");
				break;
			}
		}
		if (right_val >= 0) {
			if ((arg->op.type == TEP_FILTER_OP_AND && !right_val) ||
			    (arg->op.type == TEP_FILTER_OP_OR && right_val)) {
				/* Just return right value */
				str = right;
				right = NULL;
				break;
			}
			/* The right value is meaningless */
			str = left;
			left = NULL;
			break;
		}

		FUNC1(&str, "(%s) %s (%s)", left, op, right);
		break;

	case TEP_FILTER_OP_NOT:
		op = "!";
		right = FUNC0(filter, arg->op.right);
		if (!right)
			break;

		/* See if we can consolidate */
		if (FUNC3(right, "TRUE") == 0)
			right_val = 1;
		else if (FUNC3(right, "FALSE") == 0)
			right_val = 0;
		if (right_val >= 0) {
			/* just return the opposite */
			FUNC1(&str, right_val ? "FALSE" : "TRUE");
			break;
		}
		FUNC1(&str, "%s(%s)", op, right);
		break;

	default:
		/* ?? */
		break;
	}
	FUNC2(left);
	FUNC2(right);
	return str;
}