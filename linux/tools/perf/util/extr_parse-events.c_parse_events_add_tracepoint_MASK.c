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
struct perf_event_attr {int dummy; } ;
struct parse_events_error {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct list_head*,int*,char const*,char const*,struct parse_events_error*,struct list_head*) ; 
 int FUNC1 (struct list_head*,int*,char const*,char const*,struct parse_events_error*,struct list_head*) ; 
 scalar_t__ FUNC2 (struct perf_event_attr*,struct list_head*,struct parse_events_error*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_term_tracepoint ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

int FUNC4(struct list_head *list, int *idx,
				const char *sys, const char *event,
				struct parse_events_error *err,
				struct list_head *head_config)
{
	if (head_config) {
		struct perf_event_attr attr;

		if (FUNC2(&attr, head_config, err,
				config_term_tracepoint))
			return -EINVAL;
	}

	if (FUNC3(sys, "*?"))
		return FUNC1(list, idx, sys, event,
						err, head_config);
	else
		return FUNC0(list, idx, sys, event,
					    err, head_config);
}