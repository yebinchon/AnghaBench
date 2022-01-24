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
struct TYPE_2__ {int /*<<< orphan*/  value; } ;
struct tep_filter_arg {int type; TYPE_1__ boolean; } ;
struct tep_event_filter {int dummy; } ;

/* Variables and functions */
#define  TEP_FILTER_ARG_BOOLEAN 134 
#define  TEP_FILTER_ARG_EXP 133 
#define  TEP_FILTER_ARG_FIELD 132 
#define  TEP_FILTER_ARG_NUM 131 
#define  TEP_FILTER_ARG_OP 130 
#define  TEP_FILTER_ARG_STR 129 
#define  TEP_FILTER_ARG_VALUE 128 
 int /*<<< orphan*/  FUNC0 (char**,char*) ; 
 char* FUNC1 (struct tep_event_filter*,struct tep_filter_arg*) ; 
 char* FUNC2 (struct tep_event_filter*,struct tep_filter_arg*) ; 
 char* FUNC3 (struct tep_event_filter*,struct tep_filter_arg*) ; 
 char* FUNC4 (struct tep_event_filter*,struct tep_filter_arg*) ; 
 char* FUNC5 (struct tep_event_filter*,struct tep_filter_arg*) ; 
 char* FUNC6 (struct tep_event_filter*,struct tep_filter_arg*) ; 

__attribute__((used)) static char *FUNC7(struct tep_event_filter *filter, struct tep_filter_arg *arg)
{
	char *str = NULL;

	switch (arg->type) {
	case TEP_FILTER_ARG_BOOLEAN:
		FUNC0(&str, arg->boolean.value ? "TRUE" : "FALSE");
		return str;

	case TEP_FILTER_ARG_OP:
		return FUNC4(filter, arg);

	case TEP_FILTER_ARG_NUM:
		return FUNC3(filter, arg);

	case TEP_FILTER_ARG_STR:
		return FUNC5(filter, arg);

	case TEP_FILTER_ARG_VALUE:
		return FUNC6(filter, arg);

	case TEP_FILTER_ARG_FIELD:
		return FUNC2(filter, arg);

	case TEP_FILTER_ARG_EXP:
		return FUNC1(filter, arg);

	default:
		/* ?? */
		return NULL;
	}

}