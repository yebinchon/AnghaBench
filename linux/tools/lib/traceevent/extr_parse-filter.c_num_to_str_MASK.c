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
struct tep_filter_arg {TYPE_1__ num; } ;
struct tep_event_filter {int dummy; } ;

/* Variables and functions */
#define  TEP_FILTER_CMP_EQ 133 
#define  TEP_FILTER_CMP_GE 132 
#define  TEP_FILTER_CMP_GT 131 
#define  TEP_FILTER_CMP_LE 130 
#define  TEP_FILTER_CMP_LT 129 
#define  TEP_FILTER_CMP_NE 128 
 char* FUNC0 (struct tep_event_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(struct tep_event_filter *filter, struct tep_filter_arg *arg)
{
	char *lstr;
	char *rstr;
	char *str = NULL;
	char *op = NULL;

	lstr = FUNC0(filter, arg->num.left);
	rstr = FUNC0(filter, arg->num.right);
	if (!lstr || !rstr)
		goto out;

	switch (arg->num.type) {
	case TEP_FILTER_CMP_EQ:
		op = "==";
		/* fall through */
	case TEP_FILTER_CMP_NE:
		if (!op)
			op = "!=";
		/* fall through */
	case TEP_FILTER_CMP_GT:
		if (!op)
			op = ">";
		/* fall through */
	case TEP_FILTER_CMP_LT:
		if (!op)
			op = "<";
		/* fall through */
	case TEP_FILTER_CMP_GE:
		if (!op)
			op = ">=";
		/* fall through */
	case TEP_FILTER_CMP_LE:
		if (!op)
			op = "<=";

		FUNC1(&str, "%s %s %s", lstr, op, rstr);
		break;

	default:
		/* ?? */
		break;
	}

out:
	FUNC2(lstr);
	FUNC2(rstr);
	return str;
}