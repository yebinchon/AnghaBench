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
struct trace_array {int dummy; } ;
struct TYPE_2__ {void* event_system; void* event; } ;
struct action_data {TYPE_1__ match_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct action_data* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HANDLER_ONMATCH ; 
 int /*<<< orphan*/  HIST_ERR_INVALID_SUBSYS_EVENT ; 
 int /*<<< orphan*/  HIST_ERR_NO_CLOSING_PAREN ; 
 int /*<<< orphan*/  HIST_ERR_SUBSYS_NOT_FOUND ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct trace_array*,char*,struct action_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_array*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 struct action_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct action_data*) ; 
 char* FUNC9 (char**,char*) ; 

__attribute__((used)) static struct action_data *FUNC10(struct trace_array *tr, char *str)
{
	char *match_event, *match_event_system;
	struct action_data *data;
	int ret = -EINVAL;

	data = FUNC7(sizeof(*data), GFP_KERNEL);
	if (!data)
		return FUNC0(-ENOMEM);

	match_event = FUNC9(&str, ")");
	if (!match_event || !str) {
		FUNC5(tr, HIST_ERR_NO_CLOSING_PAREN, FUNC3(match_event));
		goto free;
	}

	match_event_system = FUNC9(&match_event, ".");
	if (!match_event) {
		FUNC5(tr, HIST_ERR_SUBSYS_NOT_FOUND, FUNC3(match_event_system));
		goto free;
	}

	if (FUNC1(FUNC4(tr, match_event_system, match_event))) {
		FUNC5(tr, HIST_ERR_INVALID_SUBSYS_EVENT, FUNC3(match_event));
		goto free;
	}

	data->match_data.event = FUNC6(match_event, GFP_KERNEL);
	if (!data->match_data.event) {
		ret = -ENOMEM;
		goto free;
	}

	data->match_data.event_system = FUNC6(match_event_system, GFP_KERNEL);
	if (!data->match_data.event_system) {
		ret = -ENOMEM;
		goto free;
	}

	ret = FUNC2(tr, str, data, HANDLER_ONMATCH);
	if (ret)
		goto free;
 out:
	return data;
 free:
	FUNC8(data);
	data = FUNC0(ret);
	goto out;
}