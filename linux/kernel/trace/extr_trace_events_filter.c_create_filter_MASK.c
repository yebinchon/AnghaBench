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
struct trace_event_call {int dummy; } ;
struct trace_array {int dummy; } ;
struct filter_parse_error {int dummy; } ;
struct event_filter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct event_filter*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_array*,struct filter_parse_error*,struct event_filter*) ; 
 int /*<<< orphan*/  FUNC2 (struct filter_parse_error*) ; 
 int FUNC3 (char*,int,struct filter_parse_error**,struct event_filter**) ; 
 int FUNC4 (struct trace_event_call*,char*,struct event_filter*,struct filter_parse_error*) ; 

__attribute__((used)) static int FUNC5(struct trace_array *tr,
			 struct trace_event_call *call,
			 char *filter_string, bool set_str,
			 struct event_filter **filterp)
{
	struct filter_parse_error *pe = NULL;
	int err;

	/* filterp must point to NULL */
	if (FUNC0(*filterp))
		*filterp = NULL;

	err = FUNC3(filter_string, set_str, &pe, filterp);
	if (err)
		return err;

	err = FUNC4(call, filter_string, *filterp, pe);
	if (err && set_str)
		FUNC1(tr, pe, *filterp);
	FUNC2(pe);

	return err;
}