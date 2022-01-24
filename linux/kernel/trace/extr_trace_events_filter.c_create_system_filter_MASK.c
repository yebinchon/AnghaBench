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
struct trace_subsystem_dir {int dummy; } ;
struct trace_array {int dummy; } ;
struct filter_parse_error {int dummy; } ;
struct event_filter {int /*<<< orphan*/ * filter_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_array*,struct filter_parse_error*,struct event_filter*) ; 
 int /*<<< orphan*/  FUNC1 (struct filter_parse_error*) ; 
 int FUNC2 (char*,int,struct filter_parse_error**,struct event_filter**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct trace_subsystem_dir*,struct trace_array*,struct filter_parse_error*,char*) ; 

__attribute__((used)) static int FUNC5(struct trace_subsystem_dir *dir,
				struct trace_array *tr,
				char *filter_str, struct event_filter **filterp)
{
	struct filter_parse_error *pe = NULL;
	int err;

	err = FUNC2(filter_str, true, &pe, filterp);
	if (!err) {
		err = FUNC4(dir, tr, pe, filter_str);
		if (!err) {
			/* System filters just show a default message */
			FUNC3((*filterp)->filter_string);
			(*filterp)->filter_string = NULL;
		} else {
			FUNC0(tr, pe, *filterp);
		}
	}
	FUNC1(pe);

	return err;
}