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
struct filter_parse_error {int dummy; } ;
struct event_filter {int /*<<< orphan*/  filter_string; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct event_filter*) ; 
 int /*<<< orphan*/  FUNC2 (struct filter_parse_error*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(char *filter_string, bool set_str,
			       struct filter_parse_error **pse,
			       struct event_filter **filterp)
{
	struct event_filter *filter;
	struct filter_parse_error *pe = NULL;
	int err = 0;

	if (FUNC0(*pse || *filterp))
		return -EINVAL;

	filter = FUNC4(sizeof(*filter), GFP_KERNEL);
	if (filter && set_str) {
		filter->filter_string = FUNC3(filter_string, GFP_KERNEL);
		if (!filter->filter_string)
			err = -ENOMEM;
	}

	pe = FUNC4(sizeof(*pe), GFP_KERNEL);

	if (!filter || !pe || err) {
		FUNC2(pe);
		FUNC1(filter);
		return -ENOMEM;
	}

	/* we're committed to creating a new filter */
	*filterp = filter;
	*pse = pe;

	return 0;
}