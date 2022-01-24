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
struct parse_events_error {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  node; } ;
struct evsel {TYPE_1__ core; int /*<<< orphan*/  config_terms; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct evsel*) ; 
 int /*<<< orphan*/  config_terms ; 
 scalar_t__ FUNC3 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct evsel* FUNC6 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct parse_events_error*,int,char const*,char const*) ; 

__attribute__((used)) static int FUNC8(struct list_head *list, int *idx,
			  const char *sys_name, const char *evt_name,
			  struct parse_events_error *err,
			  struct list_head *head_config)
{
	struct evsel *evsel;

	evsel = FUNC6(sys_name, evt_name, (*idx)++);
	if (FUNC0(evsel)) {
		FUNC7(err, FUNC2(evsel), sys_name, evt_name);
		return FUNC2(evsel);
	}

	if (head_config) {
		FUNC1(config_terms);

		if (FUNC3(head_config, &config_terms))
			return -ENOMEM;
		FUNC5(&config_terms, &evsel->config_terms);
	}

	FUNC4(&evsel->core.node, list);
	return 0;
}