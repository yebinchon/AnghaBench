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
struct tep_filter_type {int dummy; } ;
struct tep_event_filter {int filters; int /*<<< orphan*/ * event_filters; } ;

/* Variables and functions */
 struct tep_filter_type* FUNC0 (struct tep_event_filter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tep_filter_type*) ; 
 int /*<<< orphan*/  FUNC2 (struct tep_filter_type*,struct tep_filter_type*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct tep_event_filter *filter,
			    int event_id)
{
	struct tep_filter_type *filter_type;
	unsigned long len;

	if (!filter->filters)
		return 0;

	filter_type = FUNC0(filter, event_id);

	if (!filter_type)
		return 0;

	FUNC1(filter_type);

	/* The filter_type points into the event_filters array */
	len = (unsigned long)(filter->event_filters + filter->filters) -
		(unsigned long)(filter_type + 1);

	FUNC2(filter_type, filter_type + 1, len);
	filter->filters--;

	FUNC3(&filter->event_filters[filter->filters], 0,
	       sizeof(*filter_type));

	return 1;
}