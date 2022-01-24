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
struct TYPE_2__ {scalar_t__ index; struct tep_format_field* field; } ;
struct tep_print_arg {TYPE_1__ dynarray; int /*<<< orphan*/  type; } ;
struct tep_format_field {int dummy; } ;
struct tep_event {int dummy; } ;
typedef  enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;

/* Variables and functions */
 int /*<<< orphan*/  TEP_EVENT_DELIM ; 
 int TEP_EVENT_ERROR ; 
 int /*<<< orphan*/  TEP_EVENT_ITEM ; 
 int /*<<< orphan*/  TEP_PRINT_DYNAMIC_ARRAY_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char**) ; 
 struct tep_format_field* FUNC4 (struct tep_event*,char*) ; 

__attribute__((used)) static enum tep_event_type
FUNC5(struct tep_event *event, struct tep_print_arg *arg,
			  char **tok)
{
	struct tep_format_field *field;
	enum tep_event_type type;
	char *token;

	if (FUNC1(TEP_EVENT_ITEM, &token) < 0)
		goto out_free;

	arg->type = TEP_PRINT_DYNAMIC_ARRAY_LEN;

	/* Find the field */
	field = FUNC4(event, token);
	if (!field)
		goto out_free;

	arg->dynarray.field = field;
	arg->dynarray.index = 0;

	if (FUNC2(TEP_EVENT_DELIM, ")") < 0)
		goto out_err;

	type = FUNC3(&token);
	*tok = token;

	return type;

 out_free:
	FUNC0(token);
 out_err:
	*tok = NULL;
	return TEP_EVENT_ERROR;
}