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
struct TYPE_2__ {int /*<<< orphan*/ * field; int /*<<< orphan*/ * size; } ;
struct tep_print_arg {int type; TYPE_1__ hex; } ;
struct tep_event {int dummy; } ;
typedef  enum tep_print_arg_type { ____Placeholder_tep_print_arg_type } tep_print_arg_type ;
typedef  enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;

/* Variables and functions */
 int TEP_EVENT_ERROR ; 
 scalar_t__ FUNC0 (struct tep_event*,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tep_print_arg*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char**) ; 

__attribute__((used)) static enum tep_event_type
FUNC4(struct tep_event *event, struct tep_print_arg *arg,
		   char **tok, enum tep_print_arg_type type)
{
	FUNC2(arg, 0, sizeof(*arg));
	arg->type = type;

	if (FUNC0(event, ",", &arg->hex.field))
		goto out;

	if (FUNC0(event, ")", &arg->hex.size))
		goto free_field;

	return FUNC3(tok);

free_field:
	FUNC1(arg->hex.field);
	arg->hex.field = NULL;
out:
	*tok = NULL;
	return TEP_EVENT_ERROR;
}