#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct tep_filter_arg* right; struct tep_filter_arg* left; } ;
struct TYPE_9__ {struct tep_filter_arg* str; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {struct tep_filter_arg* buffer; int /*<<< orphan*/  reg; struct tep_filter_arg* val; } ;
struct TYPE_7__ {struct tep_filter_arg* right; struct tep_filter_arg* left; } ;
struct TYPE_6__ {struct tep_filter_arg* right; struct tep_filter_arg* left; } ;
struct tep_filter_arg {int type; TYPE_5__ op; TYPE_4__ value; TYPE_3__ str; TYPE_2__ exp; TYPE_1__ num; } ;

/* Variables and functions */
#define  TEP_FILTER_ARG_BOOLEAN 134 
#define  TEP_FILTER_ARG_EXP 133 
#define  TEP_FILTER_ARG_NONE 132 
#define  TEP_FILTER_ARG_NUM 131 
#define  TEP_FILTER_ARG_OP 130 
#define  TEP_FILTER_ARG_STR 129 
#define  TEP_FILTER_ARG_VALUE 128 
 int /*<<< orphan*/  TEP_FILTER_CHAR ; 
 int /*<<< orphan*/  TEP_FILTER_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct tep_filter_arg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct tep_filter_arg *arg)
{
	if (!arg)
		return;

	switch (arg->type) {
	case TEP_FILTER_ARG_NONE:
	case TEP_FILTER_ARG_BOOLEAN:
		break;

	case TEP_FILTER_ARG_NUM:
		FUNC2(arg->num.left);
		FUNC2(arg->num.right);
		break;

	case TEP_FILTER_ARG_EXP:
		FUNC2(arg->exp.left);
		FUNC2(arg->exp.right);
		break;

	case TEP_FILTER_ARG_STR:
		FUNC0(arg->str.val);
		FUNC1(&arg->str.reg);
		FUNC0(arg->str.buffer);
		break;

	case TEP_FILTER_ARG_VALUE:
		if (arg->value.type == TEP_FILTER_STRING ||
		    arg->value.type == TEP_FILTER_CHAR)
			FUNC0(arg->value.str);
		break;

	case TEP_FILTER_ARG_OP:
		FUNC2(arg->op.left);
		FUNC2(arg->op.right);
	default:
		break;
	}

	FUNC0(arg);
}